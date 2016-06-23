class AddCategoryToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :category, :integer
  end
end
