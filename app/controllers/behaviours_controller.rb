class BehavioursController < ApplicationController

  def show
    @behaviour = Behaviour.find(params[:id])
  end

  def new
  end

  def index
  end

  def create
    @behaviour = Behaviour.new(params.require(:behaviour).permit(:title, :text))

    @behaviour.save
    redirect_to @behaviour
  end

  private
    def behaviour_params
      params.require(:behaviour).permit(:title, :text)
    end
end

  # render plain: params[:behaviour].inspect
