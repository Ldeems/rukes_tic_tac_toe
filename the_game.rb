require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'splayer.rb'
require_relative 'rplayer.rb'
require_relative 'aiplayer.rb'
require_relative 'unplayer.rb'
require_relative 'thegamefuncs.rb'

def game
    board = Board.new
    player = Player.new
    game = "notyet"
    ai = "none"
    until game != "notyet" do
        p "How Many Players: 1 or 2 or watch my AI's fight it out 0"
        num = gets.chomp
        if num == "1"
            p "you wanna go first or second"
            turn = gets.chomp
            if turn == "first" || turn == "second"
                until ai != "none" do
                    p "how hard do you want it to be: 1 = random, 2 = sequential, 3 = unbeatable(goodluck)"
                    diff = gets.chomp
                    if diff == "2"
                        ai = "gotit"
                        game = "start"
                    elsif diff == "1"
                        ai = "gotit"
                        game = "start"
                    elsif diff == "3"
                        ai = "gotit"
                        game = "start"
                    else
                        p "not a valid choice"
                    end    
                end
            else 
                p "invalid choice"
            end        
        elsif num == "2"
            game = "start"
        elsif num == "0"
            game = "start"
        p "pick the dificulties (1 = random, 2 = sequential, 3 = unbeatable) that shall fight it out"
        firstai = gets.chomp
        secondai = gets.chomp
        else    
            p "Not a valid Entry"
        end
        if game == "start"
            if num == "2"
                twoplayers(board.gboard, player.player)
            elsif num == "1"
                pvsai(turn,diff,board.gboard,player.player) 
            elsif num == "0"
                allai(firstai,secondai,board.gboard,player.player)       
            end      
        end
    end
end    

game

#games

# def aivsai
#     counter = 0
#     10000.times do
#     board = Board.new
#     player = Player.new
#     firstai = "3"
#     secondai = "3"

#         counter += 1
#         #allai(firstai,secondai,board.gboard,player.player)
#         if allai(firstai,secondai,board.gboard,player.player) != "TIE GAME"
#             p counter
#             p  "it fucked up"
#         else
            
    
#         end
#     end
# end

# aivsai