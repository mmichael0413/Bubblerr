class HomeController < ApplicationController
  def index
    redirect_to ideas_path
  end

end
