class Recipe < ApplicationRecord
  belongs_to :creator, class_name: :User, foreign_key: "creator_id"
  belongs_to :poster, class_name: :User, foreign_key: "poster_id"
  has_many :quantity_ingredients
  has_many :comments
  has_many :users, through: :comments
  has_many :ratings
  has_many :users, through: :ratings
  has_many :saved_recipes
  has_many :users, through: :saved_recipes


  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ["Entrée / Apéro", "Plat principal végétarien", "Plat principal à base de viande", "Plat principal à base de poisson", "Dessert"] }
  validates :cooktime, inclusion: { in: [0, 5, 10, 15, 20, 25, 30, 45, 60, 75, 90, 105, 120, 135, 150, 165, 180, 240, 300, 360, 420] }
  validates :preptime, inclusion: { in: [0, 5, 10, 15, 20, 25, 30, 45, 60, 75, 90] }
  validates :creator_id, presence: true
  validates :poster_id, presence: true
end
