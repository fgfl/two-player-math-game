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

# TEST printing numbers
(1..20).each do
  game.print_question
  game.switch_player
end
=end

# TEST printing in/correct text
game.print_correct
game.print_incorrect
game.switch_player
game.print_correct
game.print_incorrect
