require 'pry'

require "./Player"
require "./Game"

p1 = Player.new("Joe")
p2 = Player.new("Bob")

game = Game.new(p1, p2)


while true

  case game.state
  when Game.QUESTION_PHASE
    puts game.get_next_message
    game.state = Game.ANSWER_PHASE
  when Game.ANSWER_PHASE
    player = game.current_player_info

    loop do
      user_ans = gets.chomp

      unless user_ans.to_i == 0
        player.answer = user_ans.to_i
        break
      end
      puts "#{user_ans} is invalid. Enter a number."
    end

    player.lose_one_life unless game.is_correct?

    puts game.get_next_message

    if player.isDead?
      game.state = Game.END_PHASE
    else 
      game.state = Game.NEXT_PHASE
    end

  when Game.NEXT_PHASE
      game.switch_player
      puts game.get_next_message
      game.state = Game.QUESTION_PHASE
  when Game.END_PHASE
    puts game.get_next_message
    break
  else
  end
  
end