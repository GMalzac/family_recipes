class QuantityIngredient < ApplicationRecord
  belongs_to :recipe
  validates :quantities_and_ingredients, presence: true
end
