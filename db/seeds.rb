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
    image: "https://zardyplants.com/wp-content/uploads/2020/08/Vegan-Garlic-Noodles-07-1.jpg",
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

recipes2 = [
    {
    title: "Tofu Lettuce Wraps",
    ingredients: "4 oz tofu
    1 cup water
    ½ cup soy sauce
    ¼ cup sesame oil
    6 cloves garlic, minced
    1 tablespoon minced fresh ginger
    ¼ cup brown sugar
    2 tablespoons sriracha
    ¼ cup rice wine vinegar
    ⅓ cup sliced scallions
    1 tablespoon sesame oil
    1 medium yellow onion, diced
    2 ½ cups chopped mushrooms, such as shiitake
    1 tablespoon minced garlic
    8 oz sliced water chestnuts, drained and finely chopped
    ⅓ cup sliced scallions
    ½ cup canola oil
    7 oz rice noodle
    1 head iceberg lettuce",
    instructions: "Remove the tofu from its packaging and drain. Wrap the tofu in a kitchen towel, then place a heavy object on top of the tofu and press for 10–20 minutes, until the tofu feels more tender.
    Make the sauce: In a medium bowl, combine the water, soy sauce, sesame oil, garlic, ginger, sriracha, brown sugar, rice wine vinegar, and scallions and stir to dissolve the sugar. Set ½ cup (120 mL) of the sauce aside.
    Crumble the pressed tofu into the remaining marinade, then cover and refrigerate for 1 hour.
    Heat the sesame oil in a medium skillet or work over medium heat. Add the onion and sauté for 3 minutes, until translucent. Add the mushrooms and cook for about 5 minutes, or until tender, then stir in the garlic and cook for 1 minute, until fragrant.
    Add the tofu and its marinade to the pan and cook until the majority of the liquid cooks off. Add the water chestnuts and scallions. Pour in three-quarters of the reserved sauce. Toss to coat the tofu and cook until just heated through. Transfer the tofu mixture to a medium bowl.
    Heat the canola oil in the same pan over high heat until a drop of water sizzles when flicked onto the oil. Add the rice noodles and fry for about 30 seconds, until puffed up. Transfer the fried noodles to paper towels to drain.
    Remove the core from the head of lettuce, then separate into individual leaves.
    Serve the tofu in the lettuce cups and top with the crispy rice noodles and a drizzle of the remaining sauce.
    Enjoy!",
    vegetarian: true,
    image: "https://www.loveandoliveoil.com/wp-content/uploads/2020/02/tofu-lettuce-wraps-FEAT.jpg",
    cook_time: "15 Minutes",
    prep_time: "15 Minutes"
    
},
    {
    title: "Banana Bread",
    ingredients: "Flour, Baking Soda, Salt, Butter, Brown Sugar, Eggs, Bananas",
    instructions: "1. Combine the dry ingredients in one bowl.
    2. Beat the butter and sugar in another bowl. Add the eggs and mashed bananas.
    3. Add the wet mixture to the dry mixture.
    4. Pour the batter into a loaf pan and bake in a preheated oven.
    ",
    vegetarian: true,
    image: "https://live.staticflickr.com/8652/16431315088_87eb423597_b.jpg",
    cook_time: "1 Hour",
    prep_time: "15 Minutes"
    
},
    {
    title: "French Onion Soup",
    ingredients: "6 large red or yellow onions (about 3 pounds)
    4 tablespoons extra virgin olive oil
    2 tablespoons butter
    1 teaspoon sugar
    Kosher salt
    2 cloves garlic, minced
    8 cups beef stock, chicken stock, or a combination of the two
    1/2 cup dry vermouth or dry white wine
    2 bay leaves
    1 tablespoon fresh thyme leaves, a few sprigs of fresh thyme, OR 1/2 teaspoon dried thyme
    1/2 teaspoon freshly ground black pepper
    2 tablespoons brandy (optional)
    8 slices (1 inch thick) French bread or baguette
    1 1/2 cups grated Gruyere cheese
    Sprinkling grated Parmesan cheese",
    instructions: "Peel and slice the onions, Begin caramelizing the onions with olive oil and butter, Sprinkle with the sugar, finish caramelizing, and add garlic, Deglaze the pot with vermouth or wine, Add the stock, bay leaves, and thyme, Season and add the brandy, Toast the French bread slices, Serve",
    vegetarian: false,
    image: "https://live.staticflickr.com/34/123814244_6f63627247_b.jpg",
    cook_time: "1 Hour",
    prep_time: "20 Minutes"
    
},
    {
    title: "Corned Beef and Cabbage",
    ingredients: "2 qt water
    2 cups kosher salt
    1 cup brown sugar
    2 teaspoons pink curing salt
    5 cloves garlic, crushed
    1 fresh ginger, 2 in (5 cm) sliced
    1 cinnamon stick, broken into pieces
    3 bay leaves, crumbled
    1 tablespoon mustard seed
    1 tablespoon black peppercorn
    8 whole allspice berries
    12 juniper berries
    8 whole cloves
    2 lb ice
    5 lb beef brisket, good-quality, trimmed
    1 large yellow onion, chopped
    3 celery stalks, chopped
    2 large carrots, chopped
    ginger beer, 2 bottles
    dark extra-stout beer, 2 bottles
    1 ½ lb small red potato
    9 carrots, halved crosswise
    1 medium green cabbage, quartered
    5 lb corned beef brisket, thinly sliced",
    instructions: "In a very large pot, combine the water, kosher salt, brown sugar, pink curing salt, garlic, ginger, cinnamon stick, bay leaves, mustard seeds, peppercorns, allspice berries, juniper berries, and cloves. Stir and bring to a boil over high heat.
    Once the brine is boiling, remove from the heat and add the ice to bring the temperature below 45˚F (7˚C).
    Place the brisket in a large plastic storage container with a lid. Pour the cooled brine over the meat. Cover and brine the beef in the refrigerator for 5–7 days, flipping once a day.
    Once the brisket is brined, remove the beef from the liquid and transfer to a pot large enough for it to sit flat on the bottom. Add the onion, celery, carrot, ginger beer, and beer. Bring to a boil over high heat, then reduce the heat to low, cover, and gently simmer for 2½–3 hours, or until the meat is fork-tender. Remove the meat from the pot and let cool. If making corned beef and cabbage, reserve the cooking liquid. Otherwise, discard.
    Thinly slice the brisket against the grain for sandwiches or corned beef and cabbage, or dice for corned beef hash.
    Return the corned beef cooking liquid to a boil over medium-high heat. (If starting with new cooking liquid, combine the chicken broth, water, chopped carrots, celery, and onion in a large pot and bring to a boil.)
    Once the cooking liquid is boiling, add the potatoes and cook for 10 minutes, until half-cooked. Add the halved carrots and cabbage, cover, and cook for 10–15 minutes more, until the vegetables are tender.
    Transfer the vegetables to a serving platter with the sliced brisket and ladle the cooking liquid over.
    Enjoy!",
    vegetarian: true,
    image: "https://live.staticflickr.com/4089/5133152203_54198325f9_b.jpg",
    cook_time: "4 Hours",
    prep_time: "5-7 Days"
    
},
{
    title: "Chocolate Chip Cookies",
    ingredients: "
    Butter
    Eggs
    Vanilla
    Baking Soda
    Water
    Salt
    Flour
    Chocolate chips
    ",
    instructions: "Beat the butter and sugars, then beat in the eggs and vanilla.
    Dissolve the baking soda in hot water and add to the mixture.
    Stir in the flour, chocolate chips, and walnuts.
    Drop dough onto a prepared baking sheet.
    Bake at 350 F until the edges are golden brown.",
    vegetarian: true,
    image: "https://images.unsplash.com/photo-1499636136210-6f4ee915583e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=764&q=80",
    cook_time: "10 minutes",
    prep_time: "20 minutes"
    
},
{
    title: "Gnocchi with Creamed Spinach",
    ingredients: "Kosher salt and freshly ground black pepper
    1 (19-ounce) package shelf-stable gnocchi
    1 (9-ounce) package frozen cream of spinach, defrosted
    1/2 c. heavy cream
    2 oz. Parmesan, grated (about 1/2 cup)
    1/8 tsp. freshly grated nutmeg
    Lemon zest, for garnish",
    instructions: "In a large pot of salted water, cook gnocchi according to package directions. 
    Meanwhile, cook cream of spinach and cream in a large, nonstick skillet over medium heat until warm and thickened, 3 to 4 minutes. Season with salt and pepper. Add Parmesan, nutmeg, and gnocchi, and stir to coat. Serve garnished with lemon zest.",
    vegetarian: true,
    image: "https://hips.hearstapps.com/hmg-prod/images/gnocchi-with-creamed-spinach-644ae3db44882.jpg?crop=1.00xw:0.836xh;0,0.0205xh&resize=1200:*",
    cook_time: "10 minutes",
    prep_time: "10 minutes"
    
},
{
    title: "8 oz. fresh chorizo, casings removed
    1 tbsp. oil
    2 corn tortillas, torn or cut into strips
    4 eggs, well beaten
    Kosher salt and freshly ground black pepper
    Sliced avocado, diced tomatoes, and sour cream or crumbled queso, for garnish",
    instructions: "Cook chorizo in a large skillet over medium heat, breaking it into pieces, until browned and cooked through, 5 to 7 minutes. Remove chorizo, with a slotted spoon, reserving oil. Add 1 tablespoon oil (you want about 2 tablespoons total in the skillet) and tortillas to skillet. Cook, without stirring, until crispy, 3 to 4 minutes. 
    Return chorizo to skillet. Add eggs and season with salt and pepper. As eggs begin to set, scrape mixture into center of pan with a heatproof spatula. 
    Just before eggs are fully cooked, remove pan from heat. Divide mixture among 4 plates, and garnish with avocado, tomatoes, and sour cream or queso, dividing evenly. Serve immediately.",
    vegetarian: false,
    image: "https://hips.hearstapps.com/hmg-prod/images/migas-with-chorizo-644aea730ba5f.jpg?crop=1.00xw:0.836xh;0,0.108xh&resize=1200:*",
    cook_time: "15 minutes",
    prep_time: "15 minutes"
    
},
{
    title: "Chicken Marsala",
    ingredients: "1/2 c. all-purpose flour
    8 chicken cutlets or 4 chicken breasts, sliced in half (about 1.5 lbs)
    Kosher salt and freshly ground black pepper
    2 tbsp. canola oil
    2 tbsp. unsalted butter
    1 (8-ounce) package sliced mushrooms
    1/3 c. chopped onion (about 1/2 small onion)
    2 cloves garlic, chopped
    1/2 c. dry Marsala wine
    3/4 c. chicken stock
    1/2 c. heavy cream
    1 tsp. fresh thyme, plus more for garnish",
    instructions: "Place flour in a shallow bowl. Use a meat tenderizer or the bottom of a sturdy cup to pound chicken to about 1/4 inch thick. Season with salt and pepper. Dredge chicken in flour, turning to coat all sides. Heat oil in a medium skillet over medium-high heat. Cook chicken in batches, turning once, until golden brown, 3 to 4 minutes. Transfer to a plate and tent to keep warm. Reserve skillet.
    Pour off oil from skillet. Melt butter in skillet over medium heat. Add mushroom and onions. Season with salt and pepper. Cook, stirring occasionally, until tender, 5 to 7 minutes. Add garlic and cook, stirring, until fragrant, 2 to 3 minutes. Add wine, stock, cream, and thyme. Simmer, stirring occasionally, until thickened, 14 to 16 minutes. Season with salt and pepper. Return chicken to pan and toss to coat. Serve immediately garnished with  thyme.",
    vegetarian: false,
    image: "https://www.verywellfit.com/thmb/cjkOVsG_E0nD7JIJ9tewwbZDTx4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/chicken-marsala-962194078-04aca06b8b2b48588e40c8b57210c294.jpg",
    cook_time: "30 minutes",
    prep_time: "30 minutes"
    
},
{
    title: "Asparagus Frittata with Burrata and Herb Pesto",
    ingredients: "1/2 c. chopped fresh herbs such as basil, chives, and flat-leaf parsley
    1/4 c. plus 2 tablespoons olive oil, divided
    Kosher salt and freshly ground black pepper
    10 large eggs
    1/3 c. heavy cream
    1 oz. Parmesan, grated (about 1/4 cup)
    1 bunch asparagus (about 1 pound), cut into 1-inch pieces and tough ends discarded
    2 c. packed baby spinach
    1 (4-ounce) ball Burrata
    2 tbsp. toasted pine nuts",
    instructions: "Preheat oven to 350°F. Combine basil, chives, parsley, and 1/4 cup oil in a bowl. Season with salt and pepper. Whisk together eggs, cream, and Parmesan in a separate bowl. Season with salt and pepper. 
    Heat remaining 2 tablespoons oil in a 10-inch cast-iron skillet over medium-high heat. Add asparagus, and season with salt and pepper. Cook, stirring occasionally, until crisp-tender, 3 to 4 minutes. Add spinach and cook, stirring, just until wilted, about 1 minute. Pour egg mixture over vegetables and cook, without stirring, until eggs start to set around the edges, 2 to 4 minutes. Transfer skillet to the oven, and bake until cooked through, 12 to 14 minutes. Let cool for 5 minutes. 
    Place Burrata in center of frittata, and break open slightly with a knife. Top with herb mixture and sprinkle with pine nuts. Serve immediately.",
    vegetarian: true,
    image: "https://live.staticflickr.com/4089/5133152203_54198325f9_b.jpg",
    cook_time: "30 minutes",
    prep_time: "25 minutes"
    
},
{
    title: "Vermouth Air Fried Shrimp",
    ingredients: "1/3 c. dry vermouth
    2 1/2 tbsp. soy sauce
    2 1/2 tbsp. fresh ginger, grated or minced
    1 small clove garlic, grated or minced
    24 large shrimp (about 2/3 pound), thawed
    1 1/2 tbsp. olive oil
    Chopped fresh chives for garnish",
    instructions: "Combine vermouth, soy sauce, ginger, and garlic in a bowl. Add shrimp and toss to coat. Marinate for at least 20 minutes and up to 1 hour. 
    Preheat air fryer to 400°F. Drain shrimp and discard marinade. Toss shrimp in oil. Air Fryer until just cooked through, 6 to 8 minutes. Served garnished with chives.",
    vegetarian: false,
    image: "https://hips.hearstapps.com/hmg-prod/images/vermouth-air-fried-shrimp-1672950395.jpg?crop=0.860xw:0.718xh;0.0308xw,0.0781xh&resize=1200:*",
    cook_time: "10 minutes",
    prep_time: "10minutes"
},

]

recipes2.each do |recipe|
    user2.recipes.create(recipe)
    puts "creating:#{recipe}"
end