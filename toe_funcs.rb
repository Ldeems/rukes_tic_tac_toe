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

def key_check?(choice)
    keys = (1..9).to_a
    if keys.include?(choice.to_i)
        true
    else
        false
    end
end

def validmove(board,choice)
    if board[choice - 1] == "x"
       false
    elsif board[choice - 1] == "o"
        false
    else
        true
    end            
end 

def winner(board)
    answer = []
    count = 0
    #p "#{board[count]} + #{board[4]} and #{board[((count%3)*2)+7]} + #{board[((count%3)*2)+7]}"
    until count == 9 do
        p "#{board[count]} #{board[count+1]} == #{board[count+2]} #{board[count+2]}"
        if board[count] + "," + board[count+1] == board[count+2] + "," +  board[count+2]
                answer << true
         else
            p "#{board[(count/3)]} #{board[(count/3) + 3]} == #{board[(count/3) +6]} #{board[(count/3) +6]}"
            if board[(count/3)] + "," + board[(count/3) + 3] == board[(count/3) +6] + "," + board[(count/3) + 6]
                answer << true
            else  
                if count == 6
                    answer << false
                else 
                    p "#{board[(count*2)/3]} #{board[4]} == #{board[((count*2)/-3)+8]} #{board[((count*2)/-3)+8]}"  
                    if board[(count*2)/3] + "," + board[4] == board[((count*2)/-3)+8] + "," + board[((count*2)/-3)+8]    
                        answer << true
                    else
                        answer << false
                    end
                end            
            end    
       end
        count += 3
    end    
   youwin = answer.include?(true)
   youwin
end


def fullboard(board)
    if board.include?("1") ||
       board.include?("2") ||
       board.include?("3") ||
       board.include?("4") ||
       board.include?("5") ||
       board.include?("6") ||
       board.include?("7") ||
       board.include?("8") ||
       board.include?("9") 
        false
    else
        true
    end
end        