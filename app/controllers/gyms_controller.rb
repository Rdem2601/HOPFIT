class GymsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_gym, only: [:show, :update]
  layout "gyms-app", only: [:search, :index ]

  def index
    @gyms = Gym.all
    @hash = Gmaps4rails.build_markers(@gyms) do |gym, marker|
      marker.lat gym.latitude
      marker.lng gym.longitude
      marker.infowindow render_to_string(partial: "/shared/showcard", locals: { gym:gym })
    end
  end

  def show
    @photos = Photo.where(gym_id: @gym.id)
    @hash = Gmaps4rails.build_markers(@gym) do |gym, marker|
      marker.lat gym.latitude
      marker.lng gym.longitude
    end
  end

  def update
    if @gym.update(gym_params)
      redirect_to gym_path(@gym)
    else
      render :show
    end
  end

  def search
    if params[:search] && params[:search][:query] && !Gym.search(params[:search][:query]).empty?
      @gyms = Gym.search(params[:search][:query])
    elsif Gym.search(params[:search][:query]).empty?
      @gyms = Gym.all
    end
    @hash = Gmaps4rails.build_markers(@gyms) do |gym, marker|
      marker.lat gym.latitude
      marker.lng gym.longitude
      marker.infowindow render_to_string(partial: "/shared/showcard", locals: { gym:gym })
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
