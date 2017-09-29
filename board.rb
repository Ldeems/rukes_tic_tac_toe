class Board

    attr_reader :gboard
    def initialize
        @gboard = ["1","2","3","4","5","6","7","8","9"]
    end

    def updateboard(player,choice)  
        @gboard[choice - 1] = player
    
       @gboard
    end

    def pick_check(choice)
        keys = (1..9).to_a
        if keys.include?(choice.to_i)
            true
        else
            false
        end
    end

    
end        