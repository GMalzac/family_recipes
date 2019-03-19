class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :recipes
  has_many :created_recipes, class_name: :Recipe, foreign_key: "creator_id"
  has_many :posted_recipes, class_name: :Recipe, foreign_key: "poster_id"

  has_many :comments
  has_many :saved_recipes
  has_many :rating


end
