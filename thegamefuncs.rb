require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'splayer.rb'
require_relative 'rplayer.rb'
require_relative 'aiplayer.rb'
require_relative 'unplayer.rb'




def twoplayers(board,player)
    yboard = Board.new
    yboard.gboard = board
    aplayer = Player.new
    aplayer.player = player
    game = "start"
    until game == "end"
        choice = ""
        yboard.print
        p "player #{aplayer.player}'s turn'"
        if aplayer.player == "o"
            choice = gets.chomp
        else
            choice = gets.chomp
        end
        if yboard.pick_check?(choice) == true
            if yboard.validmove?(choice) == true
                yboard.updateboard(aplayer.player,choice)
                if yboard.winner? == true
                    p "player #{aplayer.player} is the winner"
                    game = "end"
                    yboard.print
                else
                    if yboard.fullboard? == true   
                        yboard.print
                        p "TIE GAME"
                        game = "end"
                    else
                        aplayer.playerchange
                    end
                end
            else
                p "spot already taken"
            end
        else
        p "not a valid choice"
        end
    end  
end

def pvsai(turn,diff,board,player)
    yboard = Board.new
    yboard.gboard = board
    aplayer = Player.new
    aplayer.player = player
    game = "start"
    if diff == "2"
        ai = Splayer.new
    elsif diff == "1"
        ai = Rplayer.new
    elsif diff == "3"
        ai = Trymeplayer.new
    end
    counter = 1
    until game == "end"
        choice = ""
        yboard.print
        p "player #{aplayer.player}'s turn'"
        if turn == "first" && counter % 2 == 1
            choice = gets.chomp
        elsif turn == "second" && counter % 2 ==0
            choice = gets.chomp
        else    
            choice = ai.move(yboard.gboard, aplayer.player)
        end
        if yboard.pick_check?(choice) == true
            if yboard.validmove?(choice) == true
                yboard.updateboard(aplayer.player,choice)
                if yboard.winner? == true
                    p "player #{aplayer.player} is the winner"
                    game = "end"
                    yboard.print
                else
                    if yboard.fullboard? == true   
                        yboard.print
                        p "TIE GAME"
                        game = "end"
                    else
                        aplayer.playerchange
                    end
                end
            else
                p "spot already taken"
            end
        else
        p "not a valid choice"
        end 
    counter += 1       
    end 
end       

# if player.player == "o"
#     choice = gets.chomp
# elsif ai != "none"
#     choice = ai.move(board.gboard, player.player)  
# else
#     choice = gets.chomp
# end
# if board.pick_check?(choice) == true
#     if board.validmove?(choice) == true
#         board.updateboard(player.player,choice)
#         if board.winner? == true
#             p "player #{player.player} is the winner"
#             game = "end"
#             board.print
#         else
#             if board.fullboard? == true   
#                 board.print
#                 p "TIE GAME"
#                 game = "end"
#             else
#                 player.playerchange
#             end
#         end
#     else
#         p "spot already taken"
#     end
# else
# p "not a valid choice"
# end
# end