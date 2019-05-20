class Actor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.most_characters
    Character.all.select do |character|
      character.actor == name
    end
  end

end
