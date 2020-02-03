require "./Player"
require "./Game"


RSpec.describe Game do
  describe "#players" do
    before(:each) do
      p1 = Player.new("Joe")
      p2 = Player.new("Bob")
      @game = Game.new(p1, p2)
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

    it "prints the question" do
      @game.print_question
    end
  end
end
=begin
# TEST printing numbers
(1..20).each do
  game.print_question
  game.switch_player
end

# TEST printing in/correct text
game.print_correct
game.print_incorrect
game.switch_player
game.print_correct
game.print_incorrect

=end