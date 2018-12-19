class StoriesController < ApplicationController
  skip_before_action :verify_authenticity_token
  # 422 Unprocessable Entity (add this line ^)
  def index
    if params[:level]
      @stories = Story.where(level: params[:level].to_i)
    else
      @stories = Story.all
    end
  end

  def show
    @story = Story.find_by(id: params[:id])
    @reading = @story.readings.create user_id: current_user.id
  end

  def new
  end

  def create
    story = Story.create(title: params["title"], body: params["body"], image: params["image"], min: params["min"], level: params["level"], audio: params["audio"])
    render json: story
  end

  def edit
  end

  def update
    story = Story.find_by id: params[:id]
    story.update audio: params["story"]["audio"]
    redirect_to story
  end

  def finish
    reading = Reading.find_by id: params[:id]
    reading.time_taken = Time.now - reading.created_at
    reading.save
    redirect_to quiz_path(reading.story.quiz)
    # reading_time = Reading.new
    # count = Reading.time_taken >> how to link it to the story_id  
    # time_taken = 
    # reading_time 
    # user_id >> current user
    # story id >> params
    # count 
    # count = Story.min.to_s

    #  reading = Reading.new
    #  reading.user_id = current_user.id
    # reading.story_id = params[:story_id]
    # reading.time = data.count
    # reading.save

  
    
  end
  def destory
  end
end
