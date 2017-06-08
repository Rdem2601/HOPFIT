class AddPriceToGyms < ActiveRecord::Migration[5.1]
  def change
    add_monetize :gyms, :price
  end
end
