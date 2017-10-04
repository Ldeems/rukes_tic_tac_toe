require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'unplayer.rb'
require_relative 'unblocker.rb'

def winningmove(board, player)
    player_class = Player.new
    board_class = Board.new
    board_class.gboard = board
    choice = ""
    board.each_with_index do |op, index|
    #    p op
    #    p index
        if op == "#{index + 1}"
            board_class.updateboard(player,op)
                if board_class.winner? == true
                    choice = op
                end
            board_class.updateboard("#{index + 1}", "#{index + 1}")       
        end
    end 
    if choice == ""
        false
    else
        choice
    end        
end

