require 'random-word'

  class Computer_Player
    attr_accessor :board, :word, :word_array, :guess_letter
    attr_reader :type
    # type is guesser or picker
    def initialize(type)
      @type = type
      @word_array = []
    end

    def guess(board, array, image)
      alphabet = ('a'..'z').to_a
      @guess_letter = alphabet.sample
      puts "Player 1 (computer), guesses: #{@guess_letter}"
    end

    def pick_word(board)
      @word = [RandomWord.adjs.next, RandomWord.nouns.next].sample
      if is_valid?
        puts "Player 2 picked a #{@word.length} letter word."
        @word_array = @word.split("")
        board.letters = board.letters*@word.length
      else
        pick_word(board)
      end
    end

    def is_valid?
      !@word.include?("_")
    end
end
