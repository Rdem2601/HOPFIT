class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :gym
      t.string :date
      t.string :expiry_date

      t.timestamps
    end
  end
end
