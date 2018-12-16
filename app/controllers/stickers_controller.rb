class StickersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
  end

  def show
  end

  def new
  end

  def create
    sticker = Sticker.create( image: params["image"])
    render json: sticker
  end

  def edit
  end

  def destory
  end
end
