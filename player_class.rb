class Player
    
        attr_accessor :player
        def initialize
            @player = "o"
        end

        def playerchange()
            if @player == "x"
                @player = "o"
            else
                @player = "x"
            end
        end
        

end        