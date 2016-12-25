require 'pry-byebug'
def start
  puts "Hello! Do you want to play 0, 1, or 2 player hangman?"
  @game_type = gets.to_i
  if @game_type == 0
    puts "Okay, computers face off!"
    @game = Game.new(@player_1 = Computer_Player.new("guesser"), @player_2 = Computer_Player.new("picker"), @board = Board.new, @image = Image.new)
  elsif @game_type == 1
    puts "All right, you be player 1. You'll play against a computer."
    @game = Game.new(@player_1 = Human_Player.new("guesser"), @player_2 = Computer_Player.new("picker"), @board = Board.new, @image=Image.new)
  else
    puts "Okay, whoever typed the input is player 1, you'll go first."
    @game = Game.new(@player_1 = Human_Player.new("guesser"), @player_2 = Human_Player.new("picker"), @board = Board.new, @image = Image.new)
  end
  @game.play
end
