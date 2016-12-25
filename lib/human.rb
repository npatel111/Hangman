
  class Human_Player
    attr_accessor :board, :word, :word_array, :guess_letter

    attr_reader :type
    # type is guesser or picker
    def initialize(type)
      @type = type
      @word_array = []
    end

    def guess(board, array, image)
      puts "Player 1, please guess a letter"
      @guess_letter = gets.chomp
    end

    def pick_word(board)
      @word = ask("Player 2, pick a word: ") {|q| q.echo = "*"}
      @word_array = @word.split("")
      board.letters = board.letters*@word.length
    end
end
