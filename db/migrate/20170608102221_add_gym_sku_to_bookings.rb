class AddGymSkuToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :gym_sku, :string
    add_column :gyms, :sku, :string
  end
end
