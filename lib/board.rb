class Board

  attr_accessor :letters, :incorrect_letters

  def initialize
    @letters = ["__"]
    @incorrect_letters = []
  end

  def update_letters(board, array, guess)
#     check out the ruby method find_index - it might work here...not sure.
    @indices = (0..array.size - 1).select {|index| array[index] == guess}
    @indices.each {|index| board.letters[index] = guess}
  end

  def display_board(board)
    puts "Your board: #{board.letters}"
    puts "Incorrect letters: #{board.incorrect_letters}"
  end

  def valid_guess?(guess, board)
#     notice that this code really has to deal with the guess, if you had this on a guess object, might be cleaner.
    if board.incorrect_letters.include?(guess)
      puts "Invalid - already an incorrect letter"
    elsif board.letters.include?(guess)
      puts "Invalid - already in board"
    elsif guess.length != 1
      puts "Invalid - should be one character"
    elsif guess.to_i.to_s == guess
      puts "Invalid - not a letter"
    else
      return true
    end
  end

end
