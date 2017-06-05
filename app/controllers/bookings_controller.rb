class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:user_id])
  end

  def create
    @gym = Gym.find(params[:gym_id])
    @booking = Booking.new(
      user: current_user,
      gym: Gym.find(params[:gym_id]),
      date: DateTime.now.to_date,
      amount_paid: @gym.price
    )
    if @booking.save
      redirect_to gym_path(@gym)
      flash[:notice] = "Vous avez bien réservé"
    else
      render :new
      flash[:danger] = "Une erreur est survenue"
    end
  end

end
