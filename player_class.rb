class Player
    
        attr_reader :player
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