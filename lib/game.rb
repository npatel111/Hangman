require 'highline/import'

class Game
  attr_accessor :player_1, :player_2, :board, :image, :word, :guess, :word_array, :indices

  def initialize(player_1 = Players::Human.new("guesser"), player_2 = Computer_Player.new("picker"))
    @player_1 = player_1
    @player_2 = player_2
    @board = Board.new
    @image = Image.new
  end

  def won?
    @board.letters == @word_array
  end

  def end_message
    if won?
      #player_1 (guesser) is winner
      puts "Congratulations #{@player_1.type}"
      puts "Sorry, #{@player_2.type}"
    else
      #player_2 (picker) is winner
      puts "Congratulations #{@player_2.type}"
      puts "Sorry, #{@player_1.type}, the word was: #{self.player_2.word}"
    end
  end

  def lost?
    @image.hangman_image == @image.hanged_men.last
  end

  def over?
    won? || lost?
  end

  def show_status
    @board.display_board(@board)
    @image.display_hangman_image(@image)
    puts "\n\n\n"
    #byebug
    #bug where sometimes this shows twice?
  end

  def ask_to_play_again
    puts "Do you want to play again? (Y/N)"
    answer = gets.chomp
    if answer.downcase == "y"
      start
    else
      exit
    end
  end

  def check_validity
    if @board.valid_guess?(@player_1.guess_letter, @board)
      update_game
      show_status
      # byebug
    else
      turn
      # byebug
    end
  end

  def update_game
    # byebug
    if @word_array.include?(@player_1.guess_letter)
      @board.update_letters(@board, @word_array, @player_1.guess_letter)
    else
      @board.incorrect_letters << @player_1.guess_letter
      @image.update_hangman_image
    end
  end

  def turn
    self.player_1.guess(@board, @word_array, @image)
    check_validity
    # byebug - however many valid turns you have had before, you have that many extra statuses?
    # show_status
  end

  def play
    self.player_2.pick_word(@board)
    @word_array = self.player_2.word_array
    until over?
      turn
    end
    end_message
    ask_to_play_again
  end
end

#Check for repeating bug! status!
