require_relative 'toe_funcs.rb'


def gamefunc
        player = "o"
        game = "start"
        board = ["1","2","3","4","5","6","7","8","9"]
    until game == "finished" do
        p "#{board[0]} | #{board[1]} | #{board[2]}" 
        p "----------"
        p "#{board[3]} | #{board[4]} | #{board[5]}"
        p "----------"
        p "#{board[6]} | #{board[7]} | #{board[8]}"

        pick = gets.chomp
        choice = pick.to_i
        if key_check?(choice) == true
            if  validmove(board,choice) == true
                board = makemove(board,player,choice)
                    if winner(board) == true
                        p "player #{player} is the winner"
                        game = "finished"
                    else
                        if fullboard(board) == true
                            p "cats game"
                            game = "finished"
                        else
                            player = playerchange(player)
                        end       
                    end    
            else
                p "invalid move"
            end 
        else
            p "invalid choice"
        end
    end
end    

gamefunc