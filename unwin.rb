require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'unplayer.rb'
require_relative 'unblocker.rb'

def winningmove(board)
    player_class = Player.new
    board_class = Board.new
    board_class.gboard = board
    choice = ""
    board.each_with_index do |op, index|
    #    p op
    #    p index
        if op == "#{index + 1}"
            board_class.updateboard(player_class,op)
                if board_class.winner? == false
                    p "#{choice} here should be the winner"
                    choice = op
                end
            board_class.updateboard("#{index + 1}", "#{index + 1}")       
        end
        p "#{choice} look here"
    end 
    #p "#{choice} here is the choice"
    #p "#{choice} here i am"
    if choice == ""
        false
    else
        choice
    end
    p "#{choice} final return"           
end

