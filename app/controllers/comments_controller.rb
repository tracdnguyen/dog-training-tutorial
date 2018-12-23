class CommentsController < ApplicationController
  before_action :load_tutorial, only: [:create, :edit, :update, :destroy]
  before_action :load_tutorial_comment, only: [:edit, :update, :destroy]
  before_action :authenticate_trainer!

  def index
    if params[:tutorial_id]
      @comments = Tutorial.find(params[:tutorial_id]).comments
    elsif params[:trainer_id]
      @comments = Trainer.find(params[:trainer_id]).comments
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

  end

  def update
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
    if @comment.destroy
      flash[:notice] = "Successfully Deleted Comment"
      redirect_to tutorial_path(@tutorial)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def load_tutorial
    @tutorial = Tutorial.find(params[:tutorial_id])
  end

  def load_tutorial_comment
    @comment = @tutorial.comments.find(params[:id])
  end
end
