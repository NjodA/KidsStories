class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quize = Quiz.find_by(id: params[:id])
  end

  def new
  end

  def edit
  end

  def destory
  end
end
