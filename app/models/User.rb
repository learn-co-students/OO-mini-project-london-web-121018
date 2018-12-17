class User
  attr_accessor :name

  @@all = []

  def initialize (name)
    @@all << self
    @name = name
  end

  def self.all
    @@all
  end

  def recipes_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    recipe_cards.map {|recipe_card| recipe_card.recipe}
  end

  def add_recipe_card (recipe,date,rating)
    RecipeCard(self,recipe,date,rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self,ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def top_three_recipes
    recipe_cards.sort_by {|recipe_card| recipe_card.rating}.slice(0,3)
  end

  def most_recent_recipe
    recipe_cards.max_by {|recipe_card| recipe_card.date}
  end

  def safe_recipes
    newA = []
    if allergens != []
      RecipeIngredient.all.each do |recipe_ingredient|
        allergens.each do |allergen|
          allergen.ingredient == recipe_ingredient.ingredient ? nil : newA << recipe_ingredient
        end
      end

      newA.map {|ri| ri.recipe}

  else
    RecipeIngredient.all.map {|ri| ri.recipe}
  end
end
end
