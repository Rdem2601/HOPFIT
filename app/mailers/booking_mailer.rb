class BookingMailer < ApplicationMailer
  def creation_confirmation(booking)
    @booking = booking

    mail(
      to:       @booking.user.email,
      subject:  "Bonjour, #{@booking.user.first_name} #{@booking.user.last_name}!"
    )
  end
end
