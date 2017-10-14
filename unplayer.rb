require_relative "board.rb"
require_relative "player_class.rb"
require_relative "unfuncs.rb"
class Trymeplayer

    attr_accessor :count
    def initialize
        @count = 0
    end

    def move(board, player)
        aplayer = Player.new
        aplayer.player = player
        theboard = Board.new
        theboard.gboard = board
        @count += 1
        if winningmove(theboard.gboard, aplayer.player) == false
            if blockmove(theboard.gboard, aplayer.player) == false
                if @count == 1
                    p "first move here luke"
                    choice = firstmove(theboard.gboard)
                elsif @count == 2
                    p "second move happened here luke"
                    choice = secondmove(theboard.gboard, aplayer.player)
                else
                    choice = thirdmove(theboard.gboard, aplayer.player)
                end        
            else
                choice = blockmove(theboard.gboard, aplayer.player)
            end         
        else
            choice = winningmove(theboard.gboard, aplayer.player)
        end
        #p choice
        choice       
    end 
end       