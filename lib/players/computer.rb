module Players
  class Computer < Player
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
  end
end
#pick word will also have to be randomly generated, seperate for humans and computers
