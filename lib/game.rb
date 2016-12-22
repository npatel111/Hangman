class Game
  attr_accessor :player_1, :player_2, :board, :image, :word, :guess, :word_array, :indices

  def initialize(player_1 = Players::Human.new("guesser"), player_2 = Players::Human.new("picker"), board = Board.new, image = Image.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    @image = image
    byebug
  end

  def pick_word
    puts "Player 2, please pick a word"
    @word = gets.chomp
    @word_array = @word.split("")
    @board.letters = @board.letters*@word.length
  end


  def valid_guess
  end

  def won?
    @board.letters == @word_array
  end

  def end_message
    if won?
      @winner = @player_1
      @loser = @player_2
    else
      @loser = @player_1
      @winner = @player_2
    end
  end

  def lost?
    @image = @hanged_man
  end

  def over?
    won? || lost?
  end

  def play
    pick_word
    until over?
      byebug
      @player_1.guess(@board, @word_array, @image)
      byebug
    end
    end_message
  end
end
