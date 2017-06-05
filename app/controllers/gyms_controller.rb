class GymsController < ApplicationController

  before_action :find_gym, only: [:show, :update]

  def index
    @gyms = Gym.all
  end

  def show
  end

  def update
    if @gym.update(gym_params)
      redirect_to gym_path(@gym)
    else
      render :show
    end
  end

  private

  def gym_params
    params.require(:gym).permit(:photo, :photo_cache)
  end

  def find_gym
    @gym = Gym.find(params[:id])
  end

end
