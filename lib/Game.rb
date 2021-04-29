#TO DO : la classe a plusieurs attr_accessor: 
    #le current_player (égal à un objet Player), 
    #le status (en cours, nul ou un objet Player s'il gagne), 
    #le Board 
    #et un array contenant les 2 joueurs.


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

  # def current_player
  #   if turn_number%2 == 0
  #     @current_player = @players[1]
  #   else @current_player = @players[0]
  #   end  
  #   return @current_player
  # end

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
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
      

      #methode pour afficher le plateau
      Show.new.show_board(@board)
      
      #methode pour demander au joueur ce qu'il joue
      @board.play_turn(@player1, @player1)

      if @board.victory == true 
        
        @status = "victoire"
        game_end(player1, player2)
      else 
        switch_players 
      end
        #print "victoire!"
       
      
      #vérifie si un joueur a gagné

      # if un jouer a gagné (donc status == current_player) 
      #   game_end
      # else passe au prochain tour

      #passe au joueur suivant si la partie n'est pas finie.
  end

  # def which_status(victory, match_nul) 
  #   if victory = true
  #     status = "player1"
  #   elsif match_nul == true 
  #     status = "nul"
  #   else status = "ongoing"
  #   end
  #   return status 
    
  # end
 
  def game_end(player1, player2)
    
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
    if @board.victory == true && @current_player = @player1
      @status = "fini"
      puts "Bravo, #{@player1.name} tu as gagné !"
    elsif @board.victory == true &&  @current_player = @player2
      @status = "fini"
      puts "Bravo, #{@player2.name} tu as gagné !"
    # elsif @board.turn_number == 9 && @board.victory != true
    #   @status = "fini"
    #   puts "Match nul, plus de coup possible !"
    end
  end  



end