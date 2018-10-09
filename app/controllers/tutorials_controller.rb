class TutorialsController < ApplicationController
  before_action :set_tutorial, only: [:show, :edit, :destroy, :update]

  def index
     @tutorials = Tutorial.all
  end

  def new
    @tutorial = current_trainer.tutorials.build
  end

  def show

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


  private

  def set_tutorial
    @tutorial = Tutorial.find(params[:id])
  end

  def tutorial_params
    params.require(:tutorial).permit(:title, :content)
  end
end
