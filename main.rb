require "./Player"
require "./Game"

p1 = Player.new("Joe")
p2 = Player.new("Bob")

game = Game.new(p1, p2)

puts game.players
puts "current player: #{game.current_player_info}"
puts game.switch_player
puts "current player: #{game.current_player_info}"
puts game.switch_player
puts "current player: #{game.current_player_info}"

# puts p1.lose_one_life
# puts p1.isDead?
# puts p1.lose_one_life
# puts p1.isDead?
# puts p1.lose_one_life
# puts p1.isDead?