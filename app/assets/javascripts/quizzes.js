// // Place all the behaviors and hooks related to the matching controller here.
// // All this logic will automatically be available in application.js.

// $(document).ready(function () {
//     console.log("ready!");
// });
// window.onload=function(){

//     $("op1").click(function(){

//     });
// }
//     const answer = document.querySelector("#answer");
//     const op1 = document.querySelector("#op1");
//     const op2= document.querySelector("#op2");
//     const op3 = document.querySelector("#op3");

//     function checkAnswer() {
//         console.log(answer.innerHTML);
//         console.log("button");
//         if (button == answer.innerHTML) {
//             swal("Good job!", "You clicked the button!", "success");
//         } else {
//             swal("أعد المحاولة", "You clicked the button!", "error");
//         }
//         debugger;
//     }
//     let button;
//     op1.addEventListener("click", function (){
//         button = document.querySelector("#op1").innerHTML;
//         console.log("button");
//        checkAnswer();
//    });
//     op2.addEventListener("click", function () {
//         button = document.querySelector("#op2").innerHTML;
//         checkAnswer();
//     });
//     op3.addEventListener("click", function () {
//         button = document.querySelector("#op3").innerHTML;
//         checkAnswer();
//     });
//     }

$(document).on("turbolinks:load", function () {


  const answer1 = document.querySelector(".answer1");
  const answer2 = document.querySelector(".answer2");
  const answer3 = document.querySelector(".answer3");
  const sticker = document.querySelector("#sticker");
  let button;



  $(".op1").on("click", function () {
    $(this).addClass("selected");
    if (
      $(this).text().trim() === answer1.innerText
    ) {
      $(this).addClass("correct");
    }
    disable("op1");
  });
  $(".op2").on("click", function () {
    $(this).addClass("selected");
    if (
      $(this)
        .text()
        .trim() === answer2.innerText
    ) {
      $(this).addClass("correct");
    }
    disable("op2");
  });
  $(".op3").on("click", function () {
    $(this).addClass("selected");
    // console.log(answer3.innerHTML);
    if (
      $(this)
        .text()
        .trim() === answer3.innerText
    ) {
      $(this).addClass("correct");
    }
    disable("op3");
  });
  function disable(c) {
    const options = document.querySelectorAll(`.${c}`);
    options.forEach(function (option) {
      option.disabled = true;
    });
  }
  $(".complete-quiz").on("click", function () {
    console.log("ghghg")
    if ($(".correct").length === $(".answers").length) {
      swal({
        title: "أحسنت لقد حصلت على ملصق",
        text: "",
        icon: sticker.innerHTML,
        imageWidth: 800,
        imageHeight: 400,
        imageAlt: "Custom image",
        animation: false,
        button: "تم"
      });

      fetch(location.pathname + "/complete", {
        method: "POST"
      })
        .then(r => r.json())
        .then(function (data) {
          console.log(data);
        });
    } else {
      
        swal({
          text: "أعد المحاولة",
          icon:"error",
          button:"تم"
        })
     
    }
  });
  // console.log($("button"));
  // console.log($("p"));
  // $(".op1").click(function () {

  //     //     console.log("button");
  //     // console.log("button");
  //     button = this.innerText;
  //     console.log("*******", button);
  //     checkAnswer(answer1);
  // })
  // $(".op2").on("click", function () {
  //     // console.log("button");
  //     // console.log("button");
  //     button = this.innerText;
  //     checkAnswer(answer2);
  // })
  // $(".op3").on("click", function () {
  //     // console.log("button");
  //     // console.log("button");
  //     button = this.innerHTML;
  //     checkAnswer(answer3);
  // })




});
