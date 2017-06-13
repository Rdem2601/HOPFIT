class ChangeDateformat < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :date
    add_column :bookings, :date, :datetime
    remove_column :bookings, :expiry_date
    add_column :bookings, :expiry_date, :datetime
  end
end
