class Game
  attr_accessor :current_player, :status, :board, :turn_number, :player1, :player2

  def lets_go
    puts "Bonjour, Joueur numéro 1, quel est est ton nom ?" 
    first_name = gets.chomp
    player1=Player.new(first_name, "X")
    puts "Tu joueras avec le symbole suivant: #{player1.symbol}"
    puts "Bonjour, Joueur numéro 2, quel est ton nom ?"
    second_name = gets.chomp
    player2=Player.new(second_name, "O") 
    puts "Tu joueras avec le symbole suivant: #{player2.symbol}"    
   
    @player1 = player1
    @player2 = player2

  end 
  
  def initialize
    
    @board = Board.new

    @status = "Ongoing"

    @current_player = @player1
    
    @turn_number = 1
  end

  def switch_players
    if @current_player == @player1
      @current_player = @player2
      @current_player_symbol = "0"
    else
      @current_player = @player1
      @current_player_symbol = "X"
    end
    return @current_player
  end

  
  def turn
      
      Show.new.show_board(@board)

      @board.play_turn(@player1, @player1)

      if @board.victory == true 
        
        @status = "victoire"
        game_end(player1, player2)
      else 
        switch_players 
      end
    end
 
  def game_end(player1, player2)
    

    if @board.victory == true && @current_player = @player1
      @status = "fini"
      puts "Bravo, #{@player1.name} tu as gagné !"
    elsif @board.victory == true &&  @current_player = @player2
      @status = "fini"
      puts "Bravo, #{@player2.name} tu as gagné !"

    end
  end  
end