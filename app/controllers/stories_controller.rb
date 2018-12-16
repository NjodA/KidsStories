class StoriesController < ApplicationController
  def index
    if params[:level]
      @stories = Story.where(level: params[:level])
    else 
      @stories = Story.all
    end
  end

  def show
    @story = Story.find_by(id: params[:id])
  end

  def new
  end

  def edit
  end

  def destory
  end
end
