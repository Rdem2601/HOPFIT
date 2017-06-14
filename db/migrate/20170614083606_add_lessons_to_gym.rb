class AddLessonsToGym < ActiveRecord::Migration[5.1]
  def change
    add_column :gyms, :lessons, :text
  end
end
