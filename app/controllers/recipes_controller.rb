class RecipesController < ApplicationController

    def index
      recipes = Recipe.all
      render json: recipes
    end
  
    def show
      render json: recipes
    end
  
    def create
      recipe = Recipe.create(recipe_params)
      if recipe.valid?
        render json: recipe
      else
        render json: recipe.errors, status: 422
      end
    end
  
    def update
      recipe = Recipe.find(params[:id])
      recipe.update(recipe_params)
      if recipe.valid?
        render json: recipe
      else
        render json: recipe.errors, status: 422
      end
    end
  
    def destroy
        recipe = Recipe.find(params[:id])
        if recipe.destroy
        render json: recipe
        else
        render json: recipe.errors, status: 422
        end
    end
  
    private
  
    def recipe_params
      params.require(:recipe).permit(:title, :ingredients, :instructions, :vegetarian, :image, :cook_time, :prep_time, :user_id)
    end
  end
  
