class StickersController < ApplicationController
  def index
@stickers =Sticker.where(user_id: current_user)
  end

  def show
    # @sticker = Sticker.find_by(id: params [:id])
  end

  def new
  end

  def edit

  end

  def destory
    @sticker = Sticker.find_by(id: params[:id])
    @sticker.destory
  end
end
