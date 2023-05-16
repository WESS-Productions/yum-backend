class RecipesController < ApplicationController

  
    def index
      @recipes = Recipe.all
      render json: @recipes
    end
  
    def show
      render json: @recipe
    end
  
    def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        render json: @recipe, status: :created
      else
        render json: @recipe.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @recipe.update(recipe_params)
        render json: @recipe
      else
        render json: @recipe.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @recipe.destroy
      head :no_content
    end
  
    private
  
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end
  
    def recipe_params
      params.require(:recipe).permit(:title, :ingredients, :instructions, :vegetarian, :image_url, :cook_time, :prep_time, :user_id)
    end
  end
  
