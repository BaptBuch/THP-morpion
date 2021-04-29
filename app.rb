require 'pry'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'Board'
require 'BoardCase'
require 'Game'
require 'Player'
require 'Show'

my_game = Game.new#(player1, player2)

my_game.lets_go

while my_game.status == "Ongoing"
  
  my_game.turn
  
  
  
  

  
end
my_game.game_end(my_game.lets_go)
#binding.pry 