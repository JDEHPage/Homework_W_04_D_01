class RPSgame

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def sign_comparison()
    if @player1 == @player2
      return "Draw"
    elsif (@player1 == "rock" && @player2 == "scissors") || (@player1 == "paper" && @player2 == "rock") || (@player1 == "scissors" && @player2 == "paper")
      return "Player1 wins with #{@player1}"
    else
      return "Player2 wins with #{@player2}"
    end
  end



end
