require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

g1 = Guest.new("Austin")
g2 = Guest.new("Hailey")
g3 = Guest.new("Travis")

l1 = Listing.new("Seattle")
l2 = Listing.new("Denver")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l1, g2)
t3 = Trip.new(l2, g1)
t4 = Trip.new(l2, g2)
t5 = Trip.new(l1, g3)

Pry.start
