class Board

  attr_accessor :letters, :incorrect_letters

  def initialize
    @letters = ["__"]
    @incorrect_letters = []
  end

  def update_letters(board, array, guess)
    @indices = (0..array.size - 1).select {|index| array[index] == guess}
    @indices.each {|index| board.letters[index] = guess}
  end

  def display_board(board)
    puts "Your board: #{board.letters}"
    puts "Incorrect letters: #{board.incorrect_letters}"
  end

end
