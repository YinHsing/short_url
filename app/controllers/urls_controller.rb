class UrlsController < ApplicationController
  require 'securerandom'
  def index
    @urls = Url.order('id DESC')
  end
  def new
    @url = Url.new
  end
  def create
    @url = Url.new(url_params)
    @url.shorten_url = SecureRandom.hex(6)
    if @url.save
      redirect_to urls_path
    else
      render :new
    end 
  end
  def show
    @url = Url.find(params[:id])

  end

  private
  def url_params
    params.require(:url).permit(:origin_url)
  end
  
end
