class CreateQuantityIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :quantity_ingredients do |t|
      t.string :quantities_and_ingredients
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
