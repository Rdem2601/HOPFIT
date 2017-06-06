class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :gym
      t.datetime :date
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
