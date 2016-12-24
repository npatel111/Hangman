require_relative '../player.rb'
require 'random-word'

module Players
  class Computer < Player
    attr_accessor :board, :word, :word_array

    def guess(board, array, image)

      alphabet = ('a'..'z').to_a
      @guess_letter = alphabet.sample
      puts "Player 1 (computer), guesses: #{@guess_letter}"
      if array.include?(@guess_letter)
        board.update_letters(board, array, @guess_letter)
      else
        board.incorrect_letters << @guess_letter
        image.update_hangman_image
      end
    end

    def pick_word(board)
      @word = RandomWord.adjs.next
      puts "Okay Player 2, a computer, picked a word."
      @word_array = @word.split("")
      board.letters = board.letters*@word.length
    end

  end
end
#pick word will also have to be randomly generated, seperate for humans and computers
