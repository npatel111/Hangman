class Board

  attr_accessor :letters, :incorrect_letters

  def initialize
    @letters = ["__"]
    @incorrect_letters = []
  end

  # def turn_count
  #   @incorrect_letters.length
  # end


  def update_letters(board, array, guess)
    @indices = (0..array.size - 1).select {|index| array[index] == guess}
    @indices.each {|index| board.letters[index] = guess}
    puts "Your board looks like this: #{board.letters}"
    byebug
  end

end
