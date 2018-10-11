class CommentsController < ApplicationController
  before_action :load_tutorial
  before_action :authenticate_trainer!
  
  def new

  end

  def create

  end

  private

  def comment_params
    params.require(:comment).permit(:content, :helpfulness)
  end

  def load_tutorial
   @tutorial = Tutorial.find(params[:tutorial_id])
  end
end
