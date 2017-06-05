class AddAmountPaidToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :amount_paid, :integer
  end
end
