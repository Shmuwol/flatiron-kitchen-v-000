class RecipeIngredient < ApplicationRecord
  belongs_to :recipes, dependent: :destroy
  belongs_to :ingredients, dependent: :destroy
end
