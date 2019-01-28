require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative '../models/rps_game'

class TestRPSgame < Minitest::Test

def setup
  @game1 = RPSgame.new("Rock", "Scissors")
  @game2 = RPSgame.new("Scissors", "Rock")
  @game3 = RPSgame.new("Paper", "Rock")
  @game4 = RPSgame.new("Rock", "Paper")
  @game5 = RPSgame.new("Scissors", "Paper")
  @game6 = RPSgame.new("Paper", "Scissors")
  @game7 = RPSgame.new("Paper", "Paper")

end


  def test_rock_vs_scissors
    assert_equal("Player1 wins with Rock", @game1.sign_comparison)
    assert_equal("Player2 wins with Rock", @game2.sign_comparison)
  end

  def test_paper_vs_rock
    assert_equal("Player1 wins with Paper", @game3.sign_comparison)
    assert_equal("Player2 wins with Paper", @game4.sign_comparison)
  end

  def test_scissors_vs_paper
    assert_equal("Player1 wins with Scissors", @game5.sign_comparison)
    assert_equal("Player2 wins with Scissors", @game6.sign_comparison)
  end

  def test_draw
    assert_equal("Draw", @game7.sign_comparison)
  end




end
