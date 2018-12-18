class StoriesController < ApplicationController
  skip_before_action :verify_authenticity_token
  # 422 Unprocessable Entity (add this line ^)
  def index
  end

  def show
  end

  def new

  end

  def create
    story = Story.create(title: params["title"], body: params["body"], image: params["image"], min: params["min"],level: params["level"],audio: params["audio"])
    render json: story
  end

  def edit
  end

  def destory
  end
end
