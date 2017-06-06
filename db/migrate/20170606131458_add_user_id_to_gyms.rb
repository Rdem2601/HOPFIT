class AddUserIdToGyms < ActiveRecord::Migration[5.1]
  def change
    add_reference :gyms, :user
  end
end
