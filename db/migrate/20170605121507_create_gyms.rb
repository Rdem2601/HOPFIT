class CreateGyms < ActiveRecord::Migration[5.1]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :photo
      t.string :description
      t.string :opening_hours
      t.string :equipments
      t.string :services

      t.timestamps
    end
  end
end
