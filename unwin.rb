require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'unplayer.rb'
require_relative 'unblocker.rb'

def winningmove(board)
    player_class = Player.new
    board_class = Board.new
    board_class.gboard = board
    choice = ""
    board. each_with_index do |op, index|
        if op.to_i + 1 == index
            board_class.updateboard(player_class,op)
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

