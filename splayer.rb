class Splayer
    

    def move(board,player)
        pick = ""
        choice = ["1","2","3","4","5","6","7","8","9"]
        count = 0
            until pick == "good"
                if board[count] == "x" || board[count] == "o"
                    count += 1
                else
                    pick = "good"
                end
            end
        
        choice[count]
    end
end   