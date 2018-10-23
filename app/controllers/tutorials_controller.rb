class TutorialsController < ApplicationController
  before_action :set_tutorial, only: [:show, :edit, :destroy, :update]
  before_action :authenticate_trainer!, except: [:index, :show]

  def index
    @tutorials = Tutorial.all
  end

  def new
    @tutorial = current_trainer.tutorials.build
  end

  def show
    @comment = Comment.new
  end

  def edit

  end

  def create
    @tutorial = current_trainer.tutorials.build(tutorial_params)
    if @tutorial.save
      redirect_to tutorial_path(@tutorial)
      flash[:notice] = "Successfully Created Tutorial"
    else
      render 'new'
    end
  end

  def update
    if @tutorial.trainer == current_trainer
      @tutorial.update(tutorial_params)
      if @tutorial.save
        flash[:notice] = "Successfully Edited Tutorial"
        redirect_to tutorial_path(@tutorial)
      else
        render 'edit'
      end
    else
      flash[:notice] = "You Can Only Edit Your Own Tutorials"
      redirect_to tutorial_path(@tutorial)
    end
  end

  def destroy
    if @tutorial.trainer == current_trainer
      if @tutorial.destroy
        flash[:notice] = "Successfully Deleted Tutorial"
        redirect_to tutorials_path
      end
    else
      flash[:notice] = "Tutorial Can Only Be Deleted By The Trainer"
      redirect_to tutorials_path
    end
  end

  def with_comments
    @tutorials = Tutorial.with_comments
  end

  def trainer_tutorials
    @tutorials = current_trainer.tutorials
  end

  private

  def set_tutorial
    @tutorial = Tutorial.find(params[:id])
  end

  def tutorial_params
    params.require(:tutorial).permit(:title, :content, :video_link)
  end
end
