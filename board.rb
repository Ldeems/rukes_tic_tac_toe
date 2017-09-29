class Board

    attr_reader :gboard
    def initialize
        @gboard = ["1","2","3","4","5","6","7","8","9"]
    end

    def updateboard(player,choice)  
        @gboard[choice - 1] = player
    
       @gboard
    end

    
end        