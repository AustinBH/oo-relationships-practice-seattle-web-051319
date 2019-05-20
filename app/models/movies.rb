class Movie

  attr_reader :title, :characters
  @@all = []


  def initialize(title, *characters)
    @title = title
    @characters = characters

    @@all << self
  end

  def self.all
    @@all
  end

  def total_characters
    characters.count
  end

  def self.most_actors
    self.all.max do |movie|
      movie.total_characters 
    end
  end

end
