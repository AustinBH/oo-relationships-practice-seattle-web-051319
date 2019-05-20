class Listing

  attr_reader :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def guests
    trips.map do |trip|
      trip.guest
    end
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    self.all.select do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    max_trips = 0
    self.all.each do |listing|
      if listing.trip_count > max_trips
        max_trips = listing.trip_count
      end
    end
    self.all.select do |listing|
      listing.trip_count == max_trips
    end
  end

end
