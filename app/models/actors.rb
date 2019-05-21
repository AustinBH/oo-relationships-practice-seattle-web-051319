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

  #This method gives a sorted listed of all actors by character count
  def self.character_count
  char_count = Hash.new(0)
  self.all.each do |actor|
    char_count[actor] = actor.my_characters.count
    end
      sorted = char_count.to_a.sort_by {|char, count| !count}
      sorted.map do |char, count|
      char
    end
  end

  def self.most_characters
    self.character_count[0]
  end

end
