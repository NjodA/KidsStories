class QuizesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
  end

  def show
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
end
