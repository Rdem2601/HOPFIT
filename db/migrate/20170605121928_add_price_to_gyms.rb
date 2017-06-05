class AddPriceToGyms < ActiveRecord::Migration[5.1]
  def change
    add_column :gyms, :price, :integer
  end
end
