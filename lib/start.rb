require 'pry-byebug'
def start
  puts "Hello! Do you want to play 0, 1, or 2 player hangman?"
  @game_type = gets.to_i
  if @game_type == 0
    puts "Okay, computers face off!"
    @game = Game.new(@player_1 = Computer_Player.new("guesser"), @player_2 = Computer_Player.new("picker"))
  elsif @game_type == 1
    puts "You'll be the guesser, playing against a computer."
    @game = Game.new(@player_1 = Human_Player.new("guesser"), @player_2 = Computer_Player.new("picker"))
  else
    puts "Whoever typed the input is the guesser (Player 1), the other person is Player 2."
    @game = Game.new(@player_1 = Human_Player.new("guesser"), @player_2 = Human_Player.new("picker"))
  end
  @game.play
end
