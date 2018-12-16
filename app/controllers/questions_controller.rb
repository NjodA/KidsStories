class QuestionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
  end

  def show
  end

  def new
  end

  def create
    question = Question.create(quiz_id: params["quiz_id"],question: params["question"], op1: params["op1"], op2: params["op2"], op3: params["op3"])
    render json: question
  end

  def edit
  end

  def destory
  end
end
