class QuizzesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find_by(id: params[:id])
  end

  def new
  end

 def create
   quiz = Quiz.create(score: params["score"], sticker_id: params["sticker_id"], story_id: params["story_id"])
    render json: quiz
  end

  def edit
  end

  def destory
  end

  def complete
    current_user.stickers << Quiz.find_by(id: params[:id]).sticker
    render json: { message: "Success"}
  end
end
