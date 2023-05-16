require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }
  describe "GET /index" do
    it "gets a list of recipes" do
      recipe = user.recipes.create(
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        image: 'https://example.com/recipe1.jpg',
        cook_time: 30,
        prep_time: 15,
        user_id: 1
      )


      get '/recipes'

      recipes = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(recipes.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a recipe" do
    recipe_params = {
      recipe: {
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        image: "https://example.com/recipe1.jpg",
        cook_time: 30,
        prep_time: 15,
        user_id: user.id
      }
    }

      post "/recipes", params: recipe_params
      expect(response).to have_http_status(200)
      recipe = Recipe.first
      expect(recipe.title).to eq "Recipe 1"
      expect(recipe.ingredients).to eq "Ingredients 1"
      expect(recipe.instructions).to eq "Instructions 1"
      expect(recipe.vegetarian).to eq true
      expect(recipe.image).to eq "https://example.com/recipe1.jpg"
      expect(recipe.cook_time).to eq "30"
      expect(recipe.prep_time).to eq "15"
    end
  end

  describe "PATCH /update" do
    it "updates a recipe" do
      recipe = user.recipes.create(
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        image: 'https://example.com/recipe1.jpg',
        cook_time: 30,
        prep_time: 15,
        user_id: 1
      )

      recipe_params = {
        recipe: {
          title: 'Recipe 2',
          ingredients: 'Ingredients 2',
          instructions: 'Instructions 2',
          vegetarian: false,
          image: "https://example.com/recipe2.jpg",
          cook_time: 60,
          prep_time: 30,
          user_id: user.id
        }
    }
    patch "/recipes/#{recipe.id}", params: recipe_params
    expect(response).to have_http_status(200)
    recipe = Recipe.first
    expect(recipe.title).to eq "Recipe 2"
    expect(recipe.ingredients).to eq "Ingredients 2"
    expect(recipe.instructions).to eq "Instructions 2"
    expect(recipe.vegetarian).to eq false
    expect(recipe.image).to eq "https://example.com/recipe2.jpg"
    expect(recipe.cook_time).to eq "60"
    expect(recipe.prep_time).to eq "30"
    end
  end

  describe "DELETE /destroy" do
    it "deletes a recipe" do
      recipe = user.recipes.create(
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        image: 'https://example.com/recipe1.jpg',
        cook_time: 30,
        prep_time: 15,
        user_id: 1
      )
      delete "/recipes/#{recipe.id}"
      expect(response).to have_http_status(200)
    end
  end



end
