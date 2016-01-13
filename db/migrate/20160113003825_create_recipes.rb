class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.integer :servings
      t.integer :prep_time
      t.integer :cook_time
      t.integer :passive_time

      t.timestamps null: false
    end
  end
end
