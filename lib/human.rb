
  class Human_Player
    attr_accessor :board, :word, :word_array, :guess

    attr_reader :type
    # type is guesser or picker
    def initialize(type)
      @type = type
      @word_array = []
    end

    def guess(board, array, image)
      puts "Player 1, please guess a letter"
      @guess_letter = gets.chomp
      if valid_guess?(@guess_letter, board)
        if array.include?(@guess_letter)
          board.update_letters(board, array, @guess_letter)
        else
          board.incorrect_letters << @guess_letter
          image.update_hangman_image
        end
      else
        puts "Invalid. Guess again"
        guess(board, array, image)
      end
    end

    def valid_guess?(guess, board)
      if board.incorrect_letters.include?(guess)
        puts "Invalid because it's already an incorrect letter"
      elsif board.letters.include?(guess)
        puts "Invalid because it's already a correct letter"
      elsif guess.length != 1
        puts "Invalid bc not 1 char"
      elsif guess.to_i.to_s == guess
        puts "Invalid because you put a num"
      else
        return true
      end
    end

    def pick_word(board)
      @word = ask("Player 2, pick a word: ") {|q| q.echo = "*"}
      @word_array = @word.split("")
      board.letters = board.letters*@word.length
    end
end
