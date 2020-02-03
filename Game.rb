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

  private
  def current_player= (index)
    @current_player = index
  end
end