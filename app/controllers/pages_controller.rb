class PagesController < ApplicationController

  def  welcome
    @header = "This is the welcome page"
  end

  def about
    @header = "ABOUT"
  end

  def contest
    @header = "Enter the contest"
  end

end
