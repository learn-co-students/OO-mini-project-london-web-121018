class RecipeIngredient

  attr_accessor :recipe, :ingredient

  @@all = []

  def initialize(recipe,ingredient)
    @@all << self
    @recipe = recipe
    @ingredient = ingredient
  end

  def self.all
    @@all
  end

end
