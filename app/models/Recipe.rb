class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  def self.most_popular
    Recipe.all.max_by do |recipe|
        recipe.recipe_cards.count
    end
  end

  def users
    self.recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.all.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  def allergens
    allergen_ingredients = []
    Allergen.all.each do |allergen|
        ingredients.each do |ingredient|
          allergen.ingredient == ingredient ? allergen_ingredients << ingredient : nil
        end
    end
  end

  def add_ingredients(ingredients_array)
    ingredients_array.each do |ingredient|
      RecipeIngredient.new(self,ingredient)
    end
  end
end
