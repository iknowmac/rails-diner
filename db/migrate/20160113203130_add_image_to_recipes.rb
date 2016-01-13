class AddImageToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :image, :picture
  end
end
