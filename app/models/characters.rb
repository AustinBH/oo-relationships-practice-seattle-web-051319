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

  def most_appearances
    movie_appearances = Movie.all.select do |movie|
      movie.characters.include?(self)
    end

    show_appearances = Show.all.select do |show|
      show.characters.include?(self)
    end



  end

end
