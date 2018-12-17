class RecipeCard

  attr_accessor :user, :recipe, :date, :rating

  @@all = []

  def initialize (user,recipe,date,rating)
    @@all << self
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
  end

  def self.all
    @@all
  end

  

end
