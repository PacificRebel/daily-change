class BehavioursController < ApplicationController

  def index
    @behaviour = Behaviour.all
  end

  def show
    @behaviour = Behaviour.find(params[:id])
  end

  def new
    @behaviour = Behaviour.new
  end

  def create
    @behaviour = Behaviour.new(behaviour_params)

    if @behaviour.save
      redirect_to @behaviour
    else
      render 'new'
    end
  end

  private
    def behaviour_params
      params.require(:behaviour).permit(:title, :text)
    end
end

  # render plain: params[:behaviour].inspect
