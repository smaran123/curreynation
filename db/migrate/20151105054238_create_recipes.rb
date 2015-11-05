class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :dificulty_level
      t.text :ingrediants
      t.text :procedure
      t.integer :cuisine_id
      t.integer :food_type_id
      t.integer :food_preference_id
      t.string :cookingtime
      t.timestamps null: false
    end
  end
end
