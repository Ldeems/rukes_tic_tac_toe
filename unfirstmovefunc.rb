require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'unplayer.rb'
require_relative 'unwin.rb'



def firstmove(board)
    choice = ""
    if board.include?("o") == true || board.include?("x") == true
        board.each_with_index do |place, index|
            if place != "#{index + 1}"
                if index % 2 == 1
                    if index == 1 || index == 3
                        choice = 0
                    elsif index == 7 || index == 5
                        choice = 8
                    end
                elsif index % 2 == 0 && index != 4 
                #    p "made it here"
                    choice = 4
                else
                    choice = 6
                end
            end    
        end
    else
        choice = 4
    end 
   firstmove = "#{choice + 1}"
   firstmove
end 


