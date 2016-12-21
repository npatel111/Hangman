class Board
  def initialize
    @letters = []
    @incorrect_letters = []
  end

  def turn_count
    @incorrect_letters.length
  end
end
