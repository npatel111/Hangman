require 'highline/import'

class Game
  attr_accessor :player_1, :player_2, :board, :image, :word, :guess, :word_array, :indices

  def initialize(player_1 = Players::Human.new("guesser"), player_2 = Computer_Player.new("picker"), board = Board.new, image = Image.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    @image = image
  end

  def won?
    @board.letters == @word_array
  end

  def end_message
    if won?
      @winner = @player_1
      @loser = @player_2
      puts "Congratulations #{@winner.type}"
      puts "Sorry, #{@loser.type}"
    else
      @loser = @player_1
      @winner = @player_2
      puts "Congratulations #{@winner.type}"
      puts "Sorry, #{@loser.type}, the word was: #{self.player_2.word}"
    end

  end

  def lost?
    # byebug
    @image.hangman_image == hanged_men.last
  end

  def over?
    won? || lost?
  end



  def show_status
    @board.display_board(@board)
    @image.display_hangman_image(@image)
    puts ""
    puts ""
    puts ""
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

  def play
    self.player_2.pick_word(@board)
    # self.player_1.word_array = self.player_2.word_array #atrocious code. Must fix later!
    @word_array = self.player_2.word_array
    until over?
      self.player_1.guess(@board, @word_array, @image)
      show_status
    end
    end_message
    ask_to_play_again
  end
end
