class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions
      t.boolean :vegetarian
      t.text :image
      t.string :cook_time
      t.string :prep_time

      t.timestamps
    end
  end
end
