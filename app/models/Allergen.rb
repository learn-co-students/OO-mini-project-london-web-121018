class Allergen

  attr_accessor :user, :ingredient

  @@all = []

  def initialize(user,ingredient)
    @@all << self
    @user = user
    @ingredient = ingredient
  end

  def self.all
    @@all
  end

end
