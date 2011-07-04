class BubblesController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @bubbles = Bubble.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bubbles }
    end
  end
  
  def create
    @idea = Idea.find(params[:idea_id])
    @bubble = @idea.bubbles.create(params[:bubble])
    redirect_to idea_path(@idea)
  end
    
end
