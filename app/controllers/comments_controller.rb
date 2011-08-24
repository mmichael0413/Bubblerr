class CommentsController < ApplicationController
  def create
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.create(params[:comment])
    redirect_to idea_path(@idea)
  end
end
