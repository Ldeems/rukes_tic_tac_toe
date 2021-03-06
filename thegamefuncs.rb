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
                    results = "player #{aplayer.player} is the winner"
                    game = "end"
                    yboard.print
                else
                    if yboard.fullboard? == true   
                        yboard.print
                        results = "TIE GAME"
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
    results  
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
        p "player #{aplayer.player}'s turn"
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

def allai(firstai,secondai,board,player)
    yboard = Board.new
    yboard.gboard = board
    aplayer = Player.new
    aplayer.player = player
    game = "start"
    if firstai == "1"
        firstai = Rplayer.new
    elsif firstai == "2"
        firstai = Rplayer.new
    else
        firstai = Trymeplayer.new
    end  
    if secondai == "1"
        secondai = Rplayer.new
    elsif secondai == "2"
        secondai = Rplayer.new
    else
        secondai = Trymeplayer.new
    end
    until game == "end"
        choice = ""
        #yboard.print
        #p "player #{aplayer.player}'s turn"
        if aplayer.player == "o"
            choice = firstai.move(yboard.gboard, aplayer.player)
        else
            choice = secondai.move(yboard.gboard, aplayer.player)
        end
        if yboard.pick_check?(choice) == true
            if yboard.validmove?(choice) == true
                yboard.updateboard(aplayer.player,choice)
                if yboard.winner? == true
                    yboard.print
                    results = "player #{aplayer.player} is the winner"
                    game = "end" 
                else
                    if yboard.fullboard? == true   
                        yboard.print
                        results = "TIE GAME"
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
    results
end

def apptpg(cboard,cplayer,pick)
    yboard = Board.new
    yboard.gboard = cboard
    aplayer = Player.new
    aplayer.player = cplayer
       
        choice = pick
        if yboard.pick_check?(choice) == true
         
            if yboard.validmove?(choice) == true
             
                yboard.updateboard(aplayer.player,choice)
                if yboard.winner? == true
                    results = "WINNER"
                else
                    if yboard.fullboard? == true   
                        results = "TIE"
                    else
                        results = "next"
                    end
                end
            end
        end
    results    
end 

def gameon(board,player,pick,diff,whichai)
    yboard = Board.new
    yboard.gboard = board
    aplayer = Player.new
    aplayer.player = player
    game = "start"
    if diff == "medium"
        ai = whichai
    elsif diff == "easy"
        ai = whichai
    elsif diff == "hard"
        ai = whichai
    end
    if aplayer.player == "o"
        choice = pick
    elsif    
        choice = ai.move(yboard.gboard, aplayer.player)
    end
        if yboard.pick_check?(choice) == true
            if yboard.validmove?(choice) == true
                yboard.updateboard(aplayer.player,choice)
                if yboard.winner? == true
                    outcome = "WINNER"
                else
                    if yboard.fullboard? == true   
                        outcome = "TIE"
                    else
                        outcome = "next"
                    end
                end
            end
        end
     outcome 
end 

def gameonsecond(board,player,pick,diff,whichai)
    yboard = Board.new
    yboard.gboard = board
    aplayer = Player.new
    aplayer.player = player
    game = "start"
    if diff == "medium"
        ai = whichai
    elsif diff == "easy"
        ai = whichai
    elsif diff == "hard"
        ai = whichai
    end
    if aplayer.player == "o"
        choice = ai.move(yboard.gboard, aplayer.player)
    elsif    
        choice = pick
    end
        if yboard.pick_check?(choice) == true
            if yboard.validmove?(choice) == true
                yboard.updateboard(aplayer.player,choice)
                if yboard.winner? == true
                    outcome = "WINNER"
                else
                    if yboard.fullboard? == true   
                        outcome = "TIE"
                    else
                        outcome = "next"
                    end
                end
            end
        end
     outcome 
end 
