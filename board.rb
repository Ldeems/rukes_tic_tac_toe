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

    def validmove(gboard,choice)
        if gboard[choice - 1] == "x"
           false
        elsif gboard[choice - 1] == "o"
            false
        else
            true
        end            
    end 

    def winner(gboard)
        answer = []
        count = 0
        #p "#{board[count]} + #{board[4]} and #{board[((count%3)*2)+7]} + #{board[((count%3)*2)+7]}"
        until count == 9 do
            #p "#{board[count]} #{board[count+1]} == #{board[count+2]} #{board[count+2]}"
            if gboard[count] + "," + gboard[count+1] == gboard[count+2] + "," +  gboard[count+2]
                    answer << true
             else
                #p "#{board[(count/3)]} #{board[(count/3) + 3]} == #{board[(count/3) +6]} #{board[(count/3) +6]}"
                if gboard[(count/3)] + "," + gboard[(count/3) + 3] == gboard[(count/3) +6] + "," + gboard[(count/3) + 6]
                    answer << true
                else  
                    if count == 6
                        answer << false
                    else 
                        #p "#{board[(count*2)/3]} #{board[4]} == #{board[((count*2)/-3)+8]} #{board[((count*2)/-3)+8]}"  
                        if gboard[(count*2)/3] + "," + gboard[4] == gboard[((count*2)/-3)+8] + "," + gboard[((count*2)/-3)+8]    
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

    
end        