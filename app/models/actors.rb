class Actor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def all_movies
    movie_list = []
    Movie.all.each do |movie|
      my_characters.each do |character|
        if movie.characters.include?(character)
          movie_list << movie
        end
      end
    end
    movie_list
  end

  def all_shows
    show_list = []
    Show.all.each do |show|
      my_characters.each do |character|
        if show.characters.include?(character)
          show_list << show
        end
      end
    end
    show_list
  end

  def my_characters
    Character.all.select do |character|
      character.actor == self
    end
  end

  def self.most_characters
    self.all.max do |actor|
      binding.pry
      actor.my_characters.count
    end
  end

end
