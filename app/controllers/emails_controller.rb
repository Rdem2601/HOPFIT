class EmailsController < ApplicationController

  def create
    @email = Email.new(
      address: params[:emails][:email]
      )
    @email.save
    redirect_to :root
  end

  def email_params
    params.require(:email).permit(:address)
  end
end
