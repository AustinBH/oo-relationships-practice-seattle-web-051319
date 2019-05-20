class Show

  attr_reader :name, :characters
  @@all = []

  def initialize(name, *characters)
    @name = name
    @characters = characters

    @@all << self
  end

  def self.all
    @@all
  end

  def on_the_big_screen
    all_movies = Movie.all.select do |movie|
      movie.title == self.name
    end
    if all_movies.count > 0
      self
    end
  end

end
