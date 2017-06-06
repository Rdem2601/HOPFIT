class AddValidityToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :validity, :boolean, :default => true
  end
end
