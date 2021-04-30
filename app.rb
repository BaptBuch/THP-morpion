$:.unshift File.expand_path("./../lib", __FILE__)
require 'Board'
require 'BoardCase'
require 'Game'
require 'Player'
require 'Show'
require 'bundler'
Bundler.require

class Application

  def perform
    my_game = Game.new

    my_game.lets_go

    while my_game.status == "Ongoing"
      
      my_game.turn
      
      
      
      

      
    end
    my_game.game_end(my_game.lets_go)
  end

end

Application.new.perform