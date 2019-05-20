class Bakery

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def desserts
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def ingredients
    all_ingredients = []
    desserts.each do |dessert|
      dessert.ingredients.each do |ingredient|
        all_ingredients << ingredient
      end
    end
    all_ingredients
  end

  def average_calories
    total_cal = 0
    ingredients.each do |ingredient|
      total_cal += ingredient.calorie_count
    end
    total_cal / desserts.count.to_f
  end

  def shopping_list
    list = ""
    ingredients.each do |ingredient|
      list << "#{ingredient.name} "
    end
    list
  end

end
