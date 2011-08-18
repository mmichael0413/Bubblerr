class IdeasController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @ideas = current_user.ideas
    @publicIdeas = Idea.where("user_id != ?", current_user.id)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ideas }
    end
  end
  
  def new
    @idea = Idea.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @idea }
    end
  end
  
  def create
    @idea = Idea.new(params[:idea])

    @idea.user = current_user

    respond_to do |format|
      if @idea.save
        format.html { redirect_to(@idea,
                      :notice => 'Idea was successfully created.') }
        format.xml  { render :xml => @idea,
                      :status => :created, :location => @idea }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @idea.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
  
  def show
    @idea = Idea.find(params[:id])
    @bubble = Bubble.new
    @pop = Pop.new

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @idea }
    end
  end
  
  def edit
    @idea = Idea.find(params[:id])
  end
  
  def update
    @idea = Idea.find(params[:id])

    respond_to do |format|
      if @idea.update_attributes(params[:idea])
        format.html { redirect_to(@idea,
                      :notice => 'Idea was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @idea.errors,
                      :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy

    respond_to do |format|
      format.html { redirect_to(ideas_url) }
      format.xml  { head :ok }
    end
  end
end
