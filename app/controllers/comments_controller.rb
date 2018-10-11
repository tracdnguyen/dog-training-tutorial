class CommentsController < ApplicationController
  before_action :load_tutorial
  before_action :authenticate_trainer!

  def new

  end

  def create
    @comment = @tutorial.comments.build(comment_params)
    @comment.trainer_id = current_trainer.id
    if @comment.save
      flash[:notice] = "Successfully Created Comment"
      redirect_to tutorial_path(@tutorial)
    else
      render 'new'
    end
  end

  def edit

  end

  def update

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
