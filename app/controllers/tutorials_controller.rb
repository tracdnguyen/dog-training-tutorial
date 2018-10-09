class TutorialsController < ApplicationController
  def index
  end

  def new

  end

  def create

  end


  private

  def tutorials_params
    params.require(:tutorial).permit(:title, :content)
  end
end
