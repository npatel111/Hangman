class Game

  #need to figure out winner, loser
  attr_accessor :player_1, :player_2, :board, :word, :guess, :word_array, :indices

  def initialize(player_1 = Players::Human.new("guesser"), player_2 = Players::Human.new("picker"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end

  def pick_word
    puts "Player 2, please pick a word"
    @word = gets.chomp
    @word_array = @word.split("")
    @board.letters = @board.letters*@word.length
    byebug
  end

  def update_letters
    @indices = (0..@word_array.size - 1).select {|index| @word_array[index] == @guess}
    @indices.each {|index| @board.letters[index] = @guess}
    puts "Your board looks like this: #{@board.letters}"
    byebug
  end

  def guess
    puts "Player 1, please guess a letter"
    @guess = gets.chomp
    if @word_array.include?(@guess)
      update_letters
      byebug
    else
      @board.incorrect_letters << @guess
      @hangman_image.update_hangman_image
      byebug
    end
  end



  def valid_guess
  end

  def won?
    @board.letters == @word_array
  end

  def lost?
    @hangman_image = @hanged_man
  end

  def over?
    won? || lost?
  end

  def play
    pick_word
    until over?
      guess
      byebug
    end
    puts "It's over"
    # puts "Congratulations #{winner}!"
    # puts "Sorry, #{loser}"
  end
end
