require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }
  describe "GET /recipes" do
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
end
