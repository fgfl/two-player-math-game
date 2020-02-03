require "./Question"
require "./Player"

class Game

  attr_reader :current_player, :players

  def initialize(p1 = Player.new, p2 = Player.new)
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

  # I/O


  # PRINTING FUNCTIONS
  def get_question
    "#{get_prompt} #{Question.new.question}"
  end

  def get_incorrect
    "#{get_prompt} Seriously? No!"
  end

  def get_correct
    "#{get_prompt} YES! You are correct."
  end

  def get_game_score
    "#{get_player_score(0)} vs #{get_player_score(1)}"
  end

  # ====
  private
  def current_player= (index)
    @current_player = index
  end

  def get_prompt
    "Player #{self.current_player + 1}:"
  end

  def get_player_score(index)
    "P#{index + 1}: #{self.players[index].life}/#{Player.MAX_LIFE}"
  end

end