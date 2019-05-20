require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

a1 = Actor.new("Adam West")
a2 = Actor.new("Burt Ward")
a3 = Actor.new("Alan Napier")
a4 = Actor.new("Cesar Romero")
a5 = Actor.new("Frank Gorshin")

c1 = Character.new("Batman", a1)
c2 = Character.new("Robin", a2)
c3 = Character.new("Alfred", a3)
c4 = Character.new("The Joker", a4)
c5 = Character.new("The Riddler", a5)

m1 = Movie.new("Batman", c1, c2, c3, c4)
m2 = Movie.new("Batman Returns", c1, c2, c3, c4, c5)

s1 = Show.new("Batman and Robin", c1, c2)
s2 = Show.new("Batman", c1, c2, c3, c4)

Pry.start
