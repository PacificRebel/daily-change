class BehavioursController < ApplicationController
  def index
  end

  def create
    render plain: params[:behaviour].inspect
  end
end
