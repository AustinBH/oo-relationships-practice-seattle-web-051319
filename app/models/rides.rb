class Ride

  attr_reader :passenger, :driver, :distance
  @@all = []

  def initialize(passenger, driver, distance=0.0)
    @passenger = passenger
    @driver = driver
    if distance.class == Float
      @distance = distance
    else
      @distance = distance.to_f
    end
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    total_distance = 0.0
    self.all.each do |ride|
      total_distance += ride.distance
    end
    total_distance/self.all.count
  end

end
