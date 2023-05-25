require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }
  it "should have a valid title" do
    recipe = user.recipes.create(
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        image: 'https://example.com/recipe1.jpg',
        cook_time: "30 minutes",
        prep_time: "15 minutes",
        user_id: 1
      )
    expect(recipe.errors[:title]).to include "can't be blank"
    end

  it "should have a valid ingredients list" do
    recipe = user.recipes.create(
        title: 'Recipe 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        image: 'https://example.com/recipe1.jpg',
        cook_time: "30 minutes",
        prep_time: "15 minutes",
        user_id: 1
      )
    expect(recipe.errors[:ingredients]).to include "can't be blank"
  end

  it "should have valid instructions" do
    recipe = user.recipes.create(
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        vegetarian: true,
        image: 'https://example.com/recipe1.jpg',
        cook_time: "30 minutes",
        prep_time: "15 minutes",
        user_id: 1
      )
    expect(recipe.errors[:instructions]).to include "can't be blank"
  end

  it "should have a valid vegetarian option" do
    recipe = user.recipes.create(
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        image: 'https://example.com/recipe1.jpg',
        cook_time: "30 minutes",
        prep_time: "15 minutes",
        user_id: 1
      )
    expect(recipe.errors[:vegetarian]).to include "is not included in the list"
  end

  it "should have a valid image" do
    recipe = user.recipes.create(
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        cook_time: "30 minutes",
        prep_time: "15 minutes",
        user_id: 1
      )
    expect(recipe.errors[:image]).to include "can't be blank"
  end

  it "should have a valid cook time" do
    recipe = user.recipes.create(
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        image: 'https://example.com/recipe1.jpg',
        prep_time: "15 minutes",
        user_id: 1
      )
    expect(recipe.errors[:cook_time]).to include "can't be blank"
  end

  it "should have a valid prep time" do
    recipe = user.recipes.create(
        title: 'Recipe 1',
        ingredients: 'Ingredients 1',
        instructions: 'Instructions 1',
        vegetarian: true,
        image: 'https://example.com/recipe1.jpg',
        cook_time: "30 minutes",
        user_id: 1
      )
    expect(recipe.errors[:prep_time]).to include "can't be blank"
  end

  it "should have a valid instructions length" do
    recipe = user.recipes.create(
      title: 'Recipe 1',
      instructions: 'Instructions 1',
      vegetarian: true,
      image: 'https://example.com/recipe1.jpg',
      cook_time: "30 minutes",
      prep_time: "15 minutes",
      user_id: 1
    )
    expect(recipe.instructions.length).to be >= 1
  end

  it "should have a valid ingredients length " do
    recipe = user.recipes.create(
      title: 'Recipe 1',
      ingredients: 'Ingredients 1',
      instructions: 'Instructions 1',
      vegetarian: true,
      image: 'https://example.com/recipe1.jpg',
      cook_time: "30 minutes",
      prep_time: "15 minutes",
      user_id: 1
    )
    expect(recipe.ingredients.length).to be >= 1
  end
  
  it "should have a valid title" do
    recipe = user.recipes.create(
      title: 'Recipe 1',
      ingredients: 'Ingredients 1',
      instructions: 'Instructions 1',
      vegetarian: true,
      image: 'https://example.com/recipe1.jpg',
      cook_time: "30 minutes",
      prep_time: "15 minutes",
      user_id: 1
    )
    expect(recipe.title.length).to be >= 1
  end
  
  it "should have a valid image" do
    recipe = user.recipes.create(
      title: 'Recipe 1',
      ingredients: 'Ingredients 1',
      instructions: 'Instructions 1',
      vegetarian: true,
      image: 'https://example.com/recipe1.jpg',
      cook_time: "30 minutes",
      prep_time: "15 minutes",
      user_id: 1
    )
    expect(recipe.image).to be_present
    expect(recipe.image.length).to be >= 1
  end
  
  it "should have a valid cook time" do
    recipe = user.recipes.create(
      title: 'Recipe 1',
      ingredients: 'Ingredients 1',
      instructions: 'Instructions 1',
      vegetarian: true,
      image: 'https://example.com/recipe1.jpg',
      cook_time: "30 minutes",
      prep_time: "15 minutes",
      user_id: 1
    )
  
    expect(recipe.cook_time).to be_present
    expect(recipe.cook_time.length).to be >= 1
    expect(recipe.cook_time).to eq("30 minutes")
  end
  
  
end
