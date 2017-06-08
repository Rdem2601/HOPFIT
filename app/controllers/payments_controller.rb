class PaymentsController < ApplicationController

  before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
      )

    charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @booking.amount_cents, # or amount_pennies
    description:  "Payment for gym #{@booking.gym_sku} for order #{@booking.id}",
    currency:     @booking.amount.currency
    )

    @booking.update(payment: charge.to_json, state: 'paid')
    BookingMailer.creation_confirmation(@booking).deliver_now
    redirect_to gym_booking_path(@gym, @booking)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_gym_booking_payment_path(@gym, @order)
  end

  private

  def set_order
    @booking = Booking.where(state: 'pending').find(params[:booking_id])
    @gym = Gym.find(params[:gym_id])
  end
end
