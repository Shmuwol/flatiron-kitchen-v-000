class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name)
  end

end
