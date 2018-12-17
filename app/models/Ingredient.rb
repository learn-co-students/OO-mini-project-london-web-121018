class Ingredient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @@all << self
    @name = name 
  end

  def self.all
    @@all
  end

  def Ingredient.most_common_allergen
    most = {}
    Allergen.all.each do |allergen|
      Allergen.all.count(allergen) > most ?  most = allergen : nil
    end
    most
  end

end
