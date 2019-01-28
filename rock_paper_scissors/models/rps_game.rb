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



end
