require_relative '../player.rb'
module Players
  class Human < Player
    attr_accessor :board, :word, :word_array, :guess
    def guess(board, array, image)
      puts "Player 1, please guess a letter"
      @guess_letter = gets.chomp
      byebug
      until valid_guess?(@guess_letter, board)
        puts "Invalid. Guess again"
        @guess_letter = gets.chomp
      end

      if array.include?(@guess_letter)
        board.update_letters(board, array, @guess_letter)
      else
        board.incorrect_letters << @guess_letter
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
