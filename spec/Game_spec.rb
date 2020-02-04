require "./Player"
require "./Game"


RSpec.describe Game do
  describe "#players" do
    before(:each) do
      @p1 = Player.new("Joe")
      @p2 = Player.new("Bob")
      @game = Game.new(@p1, @p2)
    end

    it "has two players" do
      expect(@game.players.size).to eq(2)
    end

    it "can get the player info" do
      expect(@game.current_player_info.name).to eq("Joe")
    end

    it "can switch players" do
      expect(@game.current_player_info.name).to eq("Joe")
      @game.switch_player
      expect(@game.current_player_info.name).to eq("Bob")
      @game.switch_player
      expect(@game.current_player_info.name).to eq("Joe")
    end

    it "gets the game score and it updates" do
      expect(@game.get_game_score).to eq("P1: 3/3 vs P2: 3/3")
      @p1.lose_one_life
      expect(@game.get_game_score).to eq("P1: 2/3 vs P2: 3/3")
    end

    it "should return the question phase text" do
      expect(Game.ANSWER_PHASE).to eq('answer_phase')
    end


  end
end