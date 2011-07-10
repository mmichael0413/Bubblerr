class PopsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @pops = Pop.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pops }
    end
  end
  
  def create
    @idea = Idea.find(params[:idea_id])
    @pop = @idea.pops.create(params[:pop])
    redirect_to idea_path(@idea)
  end
    
  def destroy
    @idea = Idea.find(params[:idea_id])
    @pop = @idea.pops.find(params[:id])
    @pop.destroy
    redirect_to idea_path(@idea)
  end
  
end
