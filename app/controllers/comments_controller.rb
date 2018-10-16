class CommentsController < ApplicationController
  before_action :load_tutorial
  before_action :authenticate_trainer!

  def index
    if params[:tutorial_id]
      @comments = Comment.find(params[:tutorial_id]).comments
    else
      @comments = Comment.all
    end
  end

  def new

  end

  def create
    @comment = @tutorial.comments.build(comment_params)
    @comment.trainer_id = current_trainer.id
    if @comment.save
      flash[:notice] = "Successfully Created Comment"
      redirect_to tutorial_path(@tutorial)
    else
      flash[:notice] = "Comment Cannot Be Left Blank"
      redirect_to tutorial_path(@tutorial)
    end
  end

  def edit
    @comment = @tutorial.comments.find(params[:id])
  end

  def update
    @comment = @tutorial.comments.find(params[:id])
    if @comment.trainer_id == current_trainer.id
      @comment.update(comment_params)
      if @comment.save
        flash[:notice] = "Successfully Edited Comment"
        redirect_to tutorial_path(@tutorial)
      else
        render 'edit'
      end
    else
      flash[:notice] = "You Can Only Edit Your Own Comments"
      redirect_to tutorial_path(@tutorial)
    end
  end

  def destroy
    @comment = @tutorial.comments.find(params[:id])
    if @comment.destroy
      flash[:notice] = "Successfully Deleted Comment"
      redirect_to tutorial_path(@tutorial)
    end
  end
  private

  def comment_params
    params.require(:comment).permit(:content, :helpfulness)
  end

  def load_tutorial
   @tutorial = Tutorial.find(params[:tutorial_id])
  end
end
