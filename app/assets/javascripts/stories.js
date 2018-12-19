// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
let length;
let arr = [];
const method = "GET";
// const params = `?api_key=${apiKey}&tag=burrito`;
// const url=baseURL+path+params;

const httpOptions = {
  method: method
};
function responseToJson(response) {
  return response.json();
}
function turnResponseIntoObject(responce) {
  console.log("loading");
  return responce.json();
}
function level() {
  arr = [];
  const questions = document.querySelector("#questions");
  while (questions.firstChild) {
    questions.removeChild(questions.firstChild);
  }
  console.log("fghj");
  if (document.querySelector("#l1").checked == true) {
    length = 1;
  } else if (document.querySelector("#l2").checked == true) {
    length = 2;
  } else if (document.querySelector("#l3").checked == true) {
    length = 3;
  } else {
    // DO NOTHING
  }

  for (let i = 0; i < length; i++) {
    var q = document.createElement("input");
    q.type = "text";
    var op1 = document.createElement("input");
    op1.type = "text";
    var op2 = document.createElement("input");
    op2.type = "text";
    var op3 = document.createElement("input");
    var br = document.createElement("br");
    op3.type = "text";
    var op4 = document.createElement("input");
    var br = document.createElement("br");
    op4.type = "text";
    q.setAttribute("id", "q" + i);
    q.setAttribute("placeholder", "q" + i + 1);
    op1.setAttribute("id", "op1" + i);
    op1.setAttribute("placeholder", "op1");
    op2.setAttribute("id", "op2" + i);
    op2.setAttribute("placeholder", "op2");
    op3.setAttribute("id", "op3" + i);
    op3.setAttribute("placeholder", "op3");
    op4.setAttribute("id", "op4" + i);
    op4.setAttribute("placeholder", "Answer");
    questions.appendChild(q);
    questions.appendChild(op1);
    questions.appendChild(op2);
    questions.appendChild(op3);
    questions.appendChild(op4);
    questions.appendChild(br);
    var question = document.querySelector(`#${"q" + i}`);
    var option1 = document.querySelector(`#${"op1" + i}`);
    var option2 = document.querySelector(`#${"op2" + i}`);
    var option3 = document.querySelector(`#${"op3" + i}`);
    var option4 = document.querySelector(`#${"op4" + i}`);
    console.log(option1);
    arr.push({
      question: question,
      option1: option1,
      option2: option2,
      option3: option3,
      option4: option4
    });
  }
}

let storyID;
function addNewStory(title, body, image, min, level, audio) {
  let params = {
    title: title,
    body: body,
    image: image,
    min: min,
    level: level,
    audio: audio
  };
  fetch("/stories", {
    method: "POST",
    headers: {
      "content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(params)
  })
    .then(responseToJson)
    .then(data => {
      console.log(data);
      const sticker = document.querySelector("#sticker").value;
      storyID = data.id;
      addNewSticker(sticker);
    });
}
function addNewSticker(image) {
  let params = { image: image };
  fetch("/stickers", {
    method: "POST",
    headers: {
      "content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(params)
  })
    .then(responseToJson)
    .then(data => {
      console.log(typeof length);
      addNewQuiz(parseInt(length), data.id, storyID);
    });
}
function addNewQuiz(score, sticker_id, story_id) {
  let params = { score: score, sticker_id: sticker_id, story_id: story_id };
  fetch("/quizzes", {
    method: "POST",
    headers: {
      "content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(params)
  })
    .then(responseToJson)
    .then(data => {
      console.log(arr);
      for (i = 0; i < arr.length; i++) {
        addNewQuestions(
          data.id,
          arr[i].question.value,
          arr[i].option1.value,
          arr[i].option2.value,
          arr[i].option3.value,
          arr[i].option4.value
        );
      }
      // location.href = `/recipes/${data.id}`;
    });
}
function addNewQuestions(quiz_id, qustion, op1, op2, op3, op4) {
  let params = {
    quiz_id: quiz_id,
    question: qustion,
    op1: op1,
    op2: op2,
    op3: op3,
    op4: op4
  };
  fetch("/questions", {
    method: "POST",
    headers: {
      "content-Type": "application/json",
      Accept: "application/json"
    },
    body: JSON.stringify(params)
  })
    .then(responseToJson)
    .then(data => {
      console.log(data);
      location.href = `/stories/${storyID}`;
    });
}
$(document).on("turbolinks:load", function() {
  const submit = document.querySelector("#submit");
  console.log(submit);
  if (submit) {
    submit.addEventListener("click", function(e) {
      console.log(length);
      const title = document.querySelector("#title").value;
      const image = document.querySelector("#image").value;
      const time = document.querySelector("#time").value;

      const body = document.querySelector("#body").value;
      lengthstr = length.toString();
      addNewStory(title, body, image, time, lengthstr);
    });
  }
});
