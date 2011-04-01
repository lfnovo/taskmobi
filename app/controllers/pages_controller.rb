class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
      redirect_to current_user
    else
      render "home"
    end
    
  end

  def about
    @title = "About"
  end

  def download
    @title = "Download"
  end

end
