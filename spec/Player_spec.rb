require "./Player"

p1 = Player.new("Joe")
p2 = Player.new("Bob")


=begin
# TEST player login life
puts p1.lose_one_life
puts p1.isDead?
puts p1.lose_one_life
puts p1.isDead?
puts p1.lose_one_life
puts p1.isDead?
=end