require 'pry'

class BoardCase 
    attr_accessor :case_number, :case_value

    def initialize(case_number)
      @case_number = case_number
      @case_value = ""
        
    end

end

#binding.pry