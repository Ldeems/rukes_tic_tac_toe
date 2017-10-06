require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'unplayer.rb'
require_relative 'unwin.rb'

def secondmove(board)
    choice = ""
    xplayer = []
    oplayer = []
    open = []
    board.each_with_index do |pmove, index|
        if pmove == "x"
            xplayer << index
        elsif pmove == "o"
            oplayer << index
        else
            open << index
        end            

    if oplayer.length == 2
        if players_move[0] % 2 == 1 && players_move[1] % 2 == 1
            choice = 4
        elsif players_move[0] % 2 == 0 && players_move[1] % 2 == 0
            choice = 0
        elsif players_move[0] % 2 == 0 && players_move[1] % 2 == 1 && players_move.include?(4) == false|| players_move[0] % 2 == 1 && players_move[1] % 2 == 0 && players_move.include?(4) == false
            choice = 5
        end
    end

    if x.length == 2
        if players_move[0] % 2 == 1 && players_move[1] % 2 == 1
            choice = 4
        elsif players_move[0] % 2 == 0 && players_move[1] % 2 == 0
            choice = 0
        elsif players_move[0] % 2 == 0 && players_move[1] % 2 == 1 && players_move.include?(4) == false|| players_move[0] % 2 == 1 && players_move[1] % 2 == 0 && players_move.include?(4) == false
            choice = 5
        end
    end

end    
