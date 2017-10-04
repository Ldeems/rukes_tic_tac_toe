require_relative "board.rb"
require_relative "player_class.rb"
class Trymeplayer

    def move(board)
        player_class = Player.new
        board_class = Board.new
        open_spaces = []
        win_move_arr = []
        block_move_arr = []
        choice = []
        player_class.player = "x"
        board_class.gboard = board
        board.each do |place|
            if place == "x" || place == "o"
              
            else
                open_spaces << place    
            end
        end
        # p open_spaces
        open_spaces.each do |possible_choices|
            board_class.updateboard(player_class.player,possible_choices)
            #  p board_class.game_board
            if board_class.winner? == true
                win_move_arr << possible_choices
            end
            player_class.playerchange
            board_class.updateboard(player_class.player,possible_choices)
            #  p board_class.game_board
            if board_class.winner? == true
                block_move_arr << possible_choices
            end
            player_class.playerchange
            board_class.updateboard(possible_choices,possible_choices)
        end
        # p "#{win_move_arr}!!!!!!!!!"
        # p block_move_arr
        if win_move_arr.empty? == false
            choice << win_move_arr[0].to_i - 1
        elsif block_move_arr.empty? == false && win_move_arr.empty? == true
            choice << block_move_arr[0].to_i - 1
        end
        
            # p choice
            players_move = []
            if choice.any? == false
                # p "made it here"
                board.each_with_index do |pmove, index|
                    if pmove == "o"
                        players_move << index
                    end
                end
                #p players_move
            end
                    if players_move.length == 1
                        if players_move[0] % 2 == 1
                            if players_move[0] == 1 ||players_move[0] == 3
                                choice << 0
                            elsif players_move[0] == 7 ||players_move[0] == 5
                                choice << 8
                            end

                        elsif players_move[0] % 2 == 0 && players_move[0] != 4 
                        #    p "made it here"
                            choice << 4

                        else
                            choice << 6
                        end
                    end

                    if players_move.length == 2
                        if players_move[0] % 2 == 1 && players_move[1] % 2 == 1
                            choice << 4
                        elsif players_move[0] % 2 == 0 && players_move[1] % 2 == 0
                            choice << 0
                        elsif players_move[0] % 2 == 0 && players_move[1] % 2 == 1 && players_move.include?(4) == false|| players_move[0] % 2 == 1 && players_move[1] % 2 == 0 && players_move.include?(4) == false
                            choice << 5
                        end
                    end
                        # p open_spaces
                        # p players_move.length
                    if players_move.length >= 3
                        # p open_spaces
                        choice << open_spaces.sample.to_i - 1
                    end

                    p "#{choice}"
                
                
                
            unmove = "#{choice[0] + 1}" 
            unmove           
        
        # p win_move_arr
        # p block_move_arr
    end
end

 
