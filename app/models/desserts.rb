class Dessert

  attr_reader :name, :bakery
  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

  def calories
    all_calories = 0
    ingredients.each do |ingredient|
      all_calories += ingredient.calorie_count
    end
    all_calories
  end

end
