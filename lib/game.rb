class Game

  #need to figure out winner, loser
  attr_accessor :player_1, :player_2, :board

  def initialize(player_1 = Players::Human.new("guesser"), player_2 = Players::Human.new("picker"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  def guess
    puts "Player 1, please guess a letter"
    @guess = gets.chomp
  end

  def turn
    guess #player 1/guesser picks a letter
  end

  def play
    # until over?
      turn
    # end
    puts "Congratulations #{winner}!"
    puts "Sorry, #{loser}"
  end
end
