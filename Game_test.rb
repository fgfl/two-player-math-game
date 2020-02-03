require "./Player"
require "./Game"

p1 = Player.new("Joe")
p2 = Player.new("Bob")

game = Game.new(p1, p2)

=begin
# TEST switching players
puts game.players
puts "current player: #{game.current_player_info}"
puts game.switch_player
puts "current player: #{game.current_player_info}"
puts game.switch_player
puts "current player: #{game.current_player_info}"
=end

# TEST printing numbers
(1..20).each do
  game.print_question
end