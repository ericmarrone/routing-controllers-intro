class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def  welcome
    @header = "This is the welcome page"
  end

  def about
    @header = "ABOUT"
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to "/welcome"
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == "gold"
      render :secrets
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to :welcome
    end
  end

end
