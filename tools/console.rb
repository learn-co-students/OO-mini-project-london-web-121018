require_relative '../config/environment.rb'


sandwich = Recipe.new('sandwich')
pizza = Recipe.new('pizza')
cake = Recipe.new('cake')
spagbol = Recipe.new('spagbol')
full_english = Recipe.new('full_english')
deji = User.new('deji')
mani = User.new('mani')
elaine = User.new('elaine')
anderson = User.new('anderson')
sandwich_card = RecipeCard.new(deji,sandwich,2018,5)
pizza_card = RecipeCard.new(elaine,cake,2016,8)
cake_card =RecipeCard.new(mani,spagbol,2010,2)
spagbol_card =RecipeCard.new(anderson, pizza,1992,4)
full_english_card = RecipeCard.new(deji,pizza,1765,3)
onion = Ingredient.new('onion')
pepper =Ingredient.new('pepper')
chicken =Ingredient.new('chicken')
pickle =Ingredient.new('pickle')
salt = Ingredient.new('salt')
pepperA =Allergen.new(elaine, pepper)
chickenA =Allergen.new(anderson,chicken)
pickleA = Allergen.new(mani,pickle)
saltA = Allergen.new(anderson, salt)
sandwich_onion = RecipeIngredient.new(sandwich,onion)
pizza_pepper = RecipeIngredient.new(pizza,pepper)
cake_chicken = RecipeIngredient.new(cake,chicken)
spagbol_pickle = RecipeIngredient.new(spagbol,pickle)
full_english_salt = RecipeIngredient.new(full_english,salt)











binding.pry
puts 'Bon Apetit'
