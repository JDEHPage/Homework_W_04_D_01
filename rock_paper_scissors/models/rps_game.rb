class RPSgame

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def sign_comparison()
    if @player1 == @player2
      return "Draw"
    elsif (@player1 == "Rock" && @player2 == "Scissors") || (@player1 == "Paper" && @player2 == "Rock") || (@player1 == "Scissors" && @player2 == "Paper")
      return "Player1 wins with #{@player1}"
    else
      return "Player2 wins with #{@player2}"
    end
  end


  def self.random_choice
    return ["rock", "paper", "scissors"].sample
  end



  # class Game
  #
  #   def self.play(hand1, hand2)
  #       return "It's a draw!" if hand1 == hand2
  #
  #       win_conditions = {
  #           "rock" => "scissors",
  #           "scissors" => "paper",
  #           "paper" => "rock"
  #       }
  #
  #       hand_one_beats = win_conditions[hand1]
  #
  #       if hand_one_beats == hand2
  #           return "#{hand1.capitalize} wins!"
  #       else
  #           return "#{hand2.capitalize} wins!"
  #       end
  #   end




end
