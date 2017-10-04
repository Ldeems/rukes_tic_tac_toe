require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'unplayer.rb'
require_relative 'unblocker.rb'

def winningmove()
    player_class = Player.new
    board_class = Board.new
    open_spaces = []
    board_class.gboard = board
    board. each do |op|
        if op == "x" || op == "o" 
            
        else
            open_spaces << op
        end
    end    
        p open_spaces

end

winningmove()