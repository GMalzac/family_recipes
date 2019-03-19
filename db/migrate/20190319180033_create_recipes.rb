class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cooktime
      t.integer :preptime
      t.string :category
      t.references :creator
      t.references :poster

      t.timestamps
    end
    add_foreign_key :recipes, :users, column: :creator_id, primary_key: :id
    add_foreign_key :recipes, :users, column: :poster_id, primary_key: :id
  end
end
