class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @latest_recipes = Recipe.order(created_at: :desc).limit(3)
    @random_starter = Recipe.where(category: "Entrée / Apéro").limit(1).order("RANDOM()").first
    random_main_category = ["Plat principal végétarien", "Plat principal à base de viande", "Plat principal à base de poisson"].sample
    @random_main = Recipe.where(category: random_main_category).limit(1).order("RANDOM()").first
    @random_desert = Recipe.where(category: "Dessert").limit(1).order("RANDOM()").first
  end
end
