require_relative '../player.rb'
require 'random-word'

module Players
  class Computer < Player
    attr_accessor :board, :word, :word_array

    def guess(board, array, image)

      alphabet = ('a'..'z').to_a
      @guess = alphabet.sample
      puts "Player 1 (computer), guesses: #{@guess}"
      if array.include?(@guess)
        board.update_letters(board, array, @guess)
      else
        board.incorrect_letters << @guess
        image.update_hangman_image
      end
    end

    def pick_word(board)
      @word = RandomWord.adjs.next
      byebug
      puts "Okay Player 2, a computer, picks: "
      @word_array = @word.split("")
      board.letters = board.letters*@word.length
    end

  end
end
#pick word will also have to be randomly generated, seperate for humans and computers
