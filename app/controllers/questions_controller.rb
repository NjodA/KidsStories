class QuestionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  def new
  end

  def create
    question = Question.create(quiz_id: params["quiz_id"],question: params["question"], op1: params["op1"], op2: params["op2"], op3: params["op3"], answer: params["op4"])
    render json: question
  end
def checkAnswers
 

   

end
  def edit
  end

  def destory
  end
end
