class Player
  attr_reader :type
  # type is guesser or picker
  def initialize(type)
    @type = type
    @word_array = []
  end

  def valid_guess?(guess, board)
    if
    (!board.incorrect_letters.include?(guess) &&
    guess.length == 1 &&
    guess.to_i.to_s != guess)
      return true
    end
  end

end
