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

def winner(board)
    answer = []
    count = 0
    #p "#{board[count]} + #{board[4]} and #{board[((count%3)*2)+7]} + #{board[((count%3)*2)+7]}"
    until count == 9 do
        if board[count] + "," + board[count+1] == board[count+2] + "," +  board[count+2]
                answer << true
         else
            if board[(count/3)] + "," + board[(count/3) + 3] == board[(count/3) +6] + "," + board[(count/3) + 6]
                answer << true
            else
                if board[count] + "," + board[4] == board[((count%3)*2)+7] + "," + board[((count%3)*2)+7]    
                    answer << true
                else
                    answer << false
                end        
            end    
       end
        count += 3
    end
           
   youwin = answer.include?(true)
   youwin
end