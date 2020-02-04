require "./Question"
require "./Player"

class Game
  @@QUESTION_PHASE = "question_phase"
  @@ANSWER_PHASE = "answer_phase"
  @@NEXT_PHASE = "next_phase"
  @@END_PHASE = "end_phase"

  attr_reader :current_player, :players
  attr_accessor :state

  def initialize(p1 = Player.new, p2 = Player.new)
    @players = [p1, p2]
    @current_player = 0
    @qa = {}
    @state = @@QUESTION_PHASE;
  end

  def self.QUESTION_PHASE
    @@QUESTION_PHASE
  end

  def self.ANSWER_PHASE
    @@ANSWER_PHASE
  end

  def self.NEXT_PHASE
    @@NEXT_PHASE
  end

  def self.END_PHASE
    @@END_PHASE
  end

  # GETTERS
  def current_player_info
    self.players[current_player]
  end

  def get_next_message
    case @state
    when @@QUESTION_PHASE
      @qa = Question.new
      return get_question
    when @@ANSWER_PHASE
      return_msg = ""
      player = self.current_player_info
      if player.answer == @qa.answer
        return_msg = get_correct
      else
        return_msg = get_incorrect
      end

      return_msg += "\n#{get_game_score}"
      return return_msg
    when @@NEXT_PHASE
      return "----- NEW TURN -----"
    when @@END_PHASE
      return "----- GAME OVER -----\nGood bye!"
    else
      return "error"
    end
  end

  # SETTERS
  def switch_player
    self.current_player = (current_player + 1) % self.players.size
  end

  def is_correct?
    self.current_player_info.answer == @qa.answer
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

  # MESSAGE FUNCTIONS
  def get_question
    "#{get_prompt} #{@qa.question}"
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
end