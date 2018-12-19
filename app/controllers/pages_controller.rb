class PagesController < ApplicationController
  def home
    @stickers = Sticker.all
  end

end
