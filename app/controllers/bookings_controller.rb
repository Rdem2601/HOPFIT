class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(gym_id: current_user.gym.id)
  end

  def show
    @booking = Booking.where(state: 'paid').find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @gym = Gym.find(params[:gym_id])
    @booking.validity = false
    if @booking.save
      redirect_to gym_bookings_path(current_user.gym.id)
      flash[:notice] = "L'entrée a bien été validée."
    else
      redirect_to gym_bookings_path(current_user.gym.id)
      flash[:danger] = "L'opération n'a pas pu être effectuée."
    end
  end

  def create
    @gym = Gym.find(params[:gym_id])
    @booking = Booking.new(
      user: current_user,
      gym: Gym.find(params[:gym_id]),
      date: DateTime.now.to_date,
      amount: @gym.price,
      state: "pending",
    )
    if @booking.save
      redirect_to new_gym_booking_payment_path(@gym, @booking)
    else
      render :new
      flash[:danger] = "Une erreur est survenue."
    end
  end
end
