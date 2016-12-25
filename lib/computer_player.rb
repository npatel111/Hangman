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
            #shouldn't have _ in there!
      puts "Okay Player 2, a computer, picked a word with #{@word.length} letters."
      @word_array = @word.split("")
      board.letters = board.letters*@word.length
      #option for easy, hard, or medium word?
    end
end
