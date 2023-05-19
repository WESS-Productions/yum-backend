user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

recipes1 = [
    {
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
    
},
{
    title: "Sesame Chicken",
    ingredients: "1 1/2 lbs boneless skinless chicken breasts cut into 1 inch pieces,
    2 eggs beaten,
    salt and pepper to taste, 1/2 cup all purpose flour, 1/2 cup cornstarch,
    oil for frying, 1 teaspoon vegetable oil,
    1 teaspoon minced fresh garlic, 
    1/4 cup honey, 
    1/3 cup soy sauce (reduced sodium if possible,
    1/2 cup ketchup, 3 tablespoons brown sugar, 
    2 tablespoons rice vinegar, 
    1 tablespoon toasted sesame oil, 
    2 teaspoons cornstarch, 
    2 tablespoons sesame seeds,
    2 tablespoons sliced green onions",
    instructions: "Place the eggs, salt and pepper in a bowl. Stir to combine
    Place the flour and 1/2 cup of cornstarch in a shallow bowl or on a plate. Stir to combine.
    Dip each piece of chicken into the egg mixture, then into the flour. Repeat the process with all of the chicken.
    Heat 3 inches of oil in a deep pan to 350 degrees F
    Add 7-8 pieces of chicken to the pan. Cook for 5 minutes or until crispy and golden brown. Repeat the process with the remaining chicken
    Drain the chicken on paper towels
    While the chicken is cooking, combine the honey, soy sauce, ketchup, brown sugar, rice vinegar, sesame oil and 2 teaspoons of cornstarch in a bowl.
    Heat the teaspoon of oil in a large pan over medium heat. Add the garlic and cook for 30 seconds. Add the honey sauce mixture and bring to a simmer. Cook for 3-4 minutes or until just thickened.
    Add the crispy chicken to the pan and toss to coat with the sauce. Sprinkle with sesame seeds and green onions, then serve.",
    vegetarian: false,
    image: "https://www.modernhoney.com/wp-content/uploads/2020/07/Sesame-Chicken-1-scaled.jpg",
    cook_time: "20 minutes",
    prep_time: "40 minutes"
    
},
{
    title: "Homemade French Fries",
    ingredients: "2 1/2 pounds Russet potatoes,
    oil for frying I use vegetable or peanut oil,
    salt and pepper to taste,
    1 tablespoon chopped parsley optional",
    instructions: "Cut the potatoes into matchsticks, either with a knife or with a french fry cutter. The potato pieces should all be similar in size. Place the potatoes in a bowl of cold water. Soak the potatoes for at least 30 minutes.
    Drain the water from the potatoes. Place the potatoes on a layer of paper towels and pat thoroughly with additional towels until dry.
    Pour 3 inches of oil into a large, deep pot. Heat the oil to 300 degrees F.
    Place about 1/3 of the potatoes in the pot, and cook until tender. This takes about 4-5 minutes. Repeat the process with the remaining potatoes. Increase the heat of the oil to 400 degrees F. Place 1/3 of the potatoes back in the pot and cook for an additional 1-3 minutes or until golden brown. Repeat the process with the remaining potatoes. Place the cooked potatoes on a sheet pan lined with paper towels.
    Sprinkle salt and pepper to taste over the fries. Add parsley if desired, then serve immediately.",
    vegetarian: true,
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMYOKAYvGZHUcyukDh_p10v3exO0zoS70E6A&usqp=CAU",
    cook_time: "30 minutes",
    prep_time: "20 minutes"
    
},
{
    title: "Smoked Chicken Wings",
    ingredients: "3 lbs chicken wings party style,
    3 tablespoons homemade BBQ spice rub or your favorite store bought rub,
    1 cup homemade BBQ sauce or your favorite store bought BBQ sauce",
    instructions: "Preheat your smoker to 250 degrees F. Load the smoker with apple wood, cherry wood or hickory chips.
    Coat the chicken wings with the spice rub and place in the smoker. Cook for 2 hours, refilling wood as needed, or until the internal temperature of the chicken wings registers 165 degrees F with a thermometer.
    Transfer the chicken wings to a sheet pan.
    Optional: Preheat the broiler. Place the sheet pan of wings under the broiler and cook for 3-4 minutes or until skin is crispy.
    Brush the wings with the BBQ sauce and serve.",
    vegetarian: false,
    image: "https://www.simplyrecipes.com/thmb/mTrA_zs8-gmBVK6BxsniX1FrBhM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-SmokedChickenWings-LEAD-05-a1bb63ab9cd84eabb1ef1c734bd6acff.jpg",
    cook_time: "2 hours 10 minutes",
    prep_time: "20 minutes"

}
]

recipes1.each do |recipe|
    user1.recipes.create(recipe)
    puts "creating:#{recipe}"
end