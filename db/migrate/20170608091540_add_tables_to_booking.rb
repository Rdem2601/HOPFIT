class AddTablesToBooking < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :amount_paid
    add_column :bookings, :state, :string
    add_monetize :bookings, :amount, currency: { present: false }
    add_column :bookings, :payment, :json
  end
end
