require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'unplayer.rb'


#------------------------win function---------------------------------------------

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

#---------------------------------block move function------------------------------

def blockmove(board, player)
    player_class = Player.new
    player_class.player = player
    board_class = Board.new
    board_class.gboard = board
    player_class.playerchange
    player = player_class.player

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

#----------------------------------------first move function------------------------

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

#----------------------------------------second move function------------------------

def secondmove(board, player)
    choice = ""
    xplayer = []
    oplayer = []
    open = []
    pick = "nope"
    corner = [0,2,6,8]
    board.each_with_index do |pmove, index|
        if pmove == "x"
            xplayer << index
        elsif pmove == "o"
            oplayer << index
        else
            open << index
        end  
    end    
    if player == "o"
        if xplayer[0] == 0 || xplayer[0] == 8
            choice = 6
        elsif xplayer[0] == 6 || xplayer[0] == 2
            choice = 8
        else
            choice = 0
        end            
    else
        if oplayer[0] % 2 == 1 && oplayer[1] % 2 == 1
            choice = 4
        elsif oplayer.include?(2) == true && oplayer.include?(4) == true
            choice = 0
        elsif oplayer[0] % 2 == 0 && oplayer[1] % 2 == 0 && oplayer.include?(4) == false
            choice = 1
        else
            until pick == "open" do
                a = corner.sample
                if oplayer.include?(a) == false && xplayer.include?(a) == false
                    pick = "open"
                    choice = a
                end
            end        
        end  
    end
    "#{choice + 1}"    
end    