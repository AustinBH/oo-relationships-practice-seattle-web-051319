class Character

  attr_reader :name, :actor
  @@all = []

  def initialize(name, actor)
    @name = name
    @actor = actor

    @@all << self
  end

  def self.all
    @@all
  end

  def all_movies
    Movie.all.select do |movie|
      movie.characters.include?(self)
    end
  end

  def all_shows
    Show.all.select do |show|
      show.characters.include?(self)
    end
  end

  def most_appearances

  end

end
