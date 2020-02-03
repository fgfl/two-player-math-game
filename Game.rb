require "./Question"

class Game

  attr_reader :current_player, :players

  def initialize(p1 = {}, p2 = {})
    @players = [p1, p2]
    @current_player = 0
  end

  # GETTERS
  def current_player_info
    players[current_player]
  end

  # SETTERS
  def switch_player
    self.current_player = (current_player + 1) % self.players.size
  end

  # PRINTING FUNCTIONS
  def print_question
    puts "#{get_prompt} #{Question.new.question}"
  end

  def print_incorrect
    puts "#{get_prompt} Seriously? No!"
  end

  def print_correct
    puts "#{get_prompt} YES! You are correct."
  end

  def print_score
    puts ""
  end

  private
  def current_player= (index)
    @current_player = index
  end

  def get_prompt
    "Player #{self.current_player + 1}:"
  end

end