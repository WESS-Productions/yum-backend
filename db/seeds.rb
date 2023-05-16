user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

recipes1 = [{
    title: "Veggie Garlic Noodles",
    ingredients: "2 tablespoons vegetable oil
        5 cloves garlic, minced
        4 green onions, sliced, divided
        2 carrots, cut into matchsticks
        1 cup snap peas
        2 tablespoons brown sugar
        3 tablespoons soy sauce
        9 oz dried rice noodles, cooked",
    instructions: "Heat the vegetable oil in a large skillet over medium heat. Add the garlic and 3 green onions and cook for 2–3 minutes, until fragrant and tender. Add the carrots and snap peas, then stir in the brown sugar and soy sauce.
        Add the noodles and toss for a couple of minutes, until the noodles are well-coated and the vegetables are tender. Season with salt and pepper.
        Serve immediately, garnished with the remaining green onion.
        Enjoy!",
    vegetarian: true,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRDiXDCEvnuS2q47QcKG26W3RhJBDw6s9ksasyY_VfORbOADsnQ0wIubkUWRKOWB2_LY4&usqp=CAU",
    cook_time: "15 minutes",
    prep_time: "15 minutes"
    
}]

recipes1.each do |recipe|
    user1.recipes.create(recipe)
    puts "creating:#{recipe}"
end