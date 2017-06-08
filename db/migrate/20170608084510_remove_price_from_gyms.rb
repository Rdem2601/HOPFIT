class RemovePriceFromGyms < ActiveRecord::Migration[5.1]
  def change
    remove_column :gyms, :price
  end
end
