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
    @tutorial.update(tutorial_params)
    if @tutorial.save
      flash[:notice] = "Successfully Edited Tutorial"
      redirect_to tutorial_path(@tutorial)
    else
      render 'edit'
    end
  end

  def destroy
    if !@tutorial.trainer
      if @tutorial.destroy
        flash[:notice] = "Successfully Deleted Tutorial"
        redirect_to tutorials_path
      end
    else
      flash[:notice] = "Tutorial Can Only Be Deleted By The Trainer"
      redirect_to tutorials_path
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
