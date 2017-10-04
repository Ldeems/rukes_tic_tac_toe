class Rplayer
    
       def move(board)
        choice = ["1","2","3","4","5","6","7","8","9"]
            count = 0
            pick = ""
            rand_pick = ""
            until pick == "good"
                rand_pick = choice.sample.to_i
                if board[rand_pick - 1] == choice[rand_pick - 1]
                    pick = "good"
                end
            end
            p rand_pick
           r = rand_pick
           p r
           r
        end
                    
    end