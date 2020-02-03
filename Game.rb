class Game
  MAX_RAND_NUM = 20

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

  # OTHERS
  def print_question
    puts "#{get_prompt} What does #{generate_number} plus #{generate_number} equal?"
  end

  def print_incorrect
    puts "#{get_prompt} Seriously? No!"
  end

  def print_correct
    puts "#{get_prompt} YES! You are correct."
  end

  private
  def current_player= (index)
    @current_player = index
  end

  def generate_number
    rand(MAX_RAND_NUM) + 1
  end

  def get_prompt
    "Player #{self.current_player + 1}:"
  end
end