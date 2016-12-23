require_relative '../player.rb'
module Players
  class Human < Player
    attr_accessor :board, :word, :word_array
    def guess(board, array, image)
      puts "Player 1, please guess a letter"
      @guess = gets.chomp
      if array.include?(@guess)
        board.update_letters(board, array, @guess)
      else
        board.incorrect_letters << @guess
        image.update_hangman_image
      end
    end

    def pick_word(board)
      @word = ask("Player 2, pick a word: ") {|q| q.echo = "*"}
      @word_array = @word.split("")
      board.letters = board.letters*@word.length
    end

  end
end
