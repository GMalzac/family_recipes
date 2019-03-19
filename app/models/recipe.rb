class Recipe < ApplicationRecord
  has_many :quantities_and_ingredients, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ["Entrée / Apéro", "Plat principal végétarien", "Plat principal à base de viande", "Plat principal à base de poisson", "Dessert"] }
  validates :cooktime, inclusion: { in: [0, 5, 10, 15, 20, 25, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180, 240, 300, 360, 420] }
  validates :preptime, inclusion: { in: [0, 5, 10, 15, 20, 25, 30, 45, 60, 75, 90] }
end
