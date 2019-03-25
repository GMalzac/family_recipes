class RecipesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_recipe, only: [:show]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
