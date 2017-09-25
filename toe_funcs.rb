def palyerassign
    
end    

def movepick(player,choice)
    board = ["1","x","3","4","5","6","7","8","9"]
end

def move(player,choice)
    board = ["1","2","3","4","5","6","7","8","9"]  
    board[choice - 1] = player

    board
end  

def makemove(board,player,choice)  
    board[choice - 1] = player

    board
end

def playerchange(player)
    if player == "x"
        player = "o"
    else
        player = "x"
    end
end

def validmove(board,player,choice)
    if board[choice - 1] == "x"
       move =  "invalid move"
    elsif board[choice - 1] == "o"
        move = "invalid move"
    else
        move = "valid move"
    end            
   move
end    