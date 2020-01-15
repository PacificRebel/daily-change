class BehavioursController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @behaviour = Behaviour.all
  end

  def show
    @behaviour = Behaviour.find(params[:id])
  end

  def new
    @behaviour = Behaviour.new
  end

  def edit
    @behaviour = Behaviour.find(params[:id])
  end

  def create
    @behaviour = Behaviour.new(behaviour_params)

    if @behaviour.save
      redirect_to @behaviour
    else
      render 'new'
    end
  end

  def update
    @behaviour = Behaviour.find(params[:id])

    if @behaviour.update(behaviour_params)
      redirect_to @behaviour
    else
      render 'edit'
    end
  end

  def destroy
    @behaviour = Behaviour.find(params[:id])
    @behaviour.destroy

    redirect_to behaviours_path
  end

  private
    def behaviour_params
      params.require(:behaviour).permit(:title, :text)
    end
end
