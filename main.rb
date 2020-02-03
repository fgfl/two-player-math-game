require "./Player"
require "./Game"


game = Game.new
p1 = Player.new("Joe")
p2 = Player.new("Bob")


puts p1.lose_one_life
puts p1.isDead?
puts p1.lose_one_life
puts p1.isDead?
puts p1.lose_one_life
puts p1.isDead?