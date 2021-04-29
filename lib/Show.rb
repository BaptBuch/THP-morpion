require 'pry' 

class Show
  attr_accessor 

  def show_board(board)
    #array = []
    #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
    puts "-"*43
    print "|      ",   board.a1.case_value,    "      |      ",    board.a2.case_value,     "      |      ",    board.a3.case_value,   "      |      " 
    puts
    puts "-"*43
    print "|      ",   board.b1.case_value,    "      |      ",    board.b2.case_value,     "      |      ",    board.b3.case_value,   "      |      "
    puts
    puts "-"*43
    print "|      ",   board.c1.case_value,    "      |      ",    board.c2.case_value,    "      |      ",    board.c3.case_value,    "      |      "
    puts 
    puts "-"*43
  end
  
end
