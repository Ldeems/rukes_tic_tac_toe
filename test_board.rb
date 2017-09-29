require 'minitest/autorun'
require_relative 'board.rb'

class Test_board < Minitest::Test 

    def test_board_1
        board = Board.new()
        assert_equal(["1","2","3","4","5","6","7","8","9"], board.gboard)
    end 
    
    def test_board_update_1
        gboard = Board.new
        player = "o"
        choice = 5 
        assert_equal(["1","2","3","4","o","6","7","8","9"],gboard.updateboard(player,choice))
    end 

    def test_board_update_2
        gboard = Board.new
        player = "x"
        choice = 6 
        assert_equal(["1","2","3","4","5","x","7","8","9"],gboard.updateboard(player,choice))
    end

    def test_board_pick_checker_1
        gboard = Board.new
        player = "o"
        choice = 5 
        assert_equal(true,Board.new.pick_check(choice))
    end 

    def test_board_pick_checker_2
        gboard = Board.new
        player = "o"
        choice = 10 
        assert_equal(false,Board.new.pick_check(choice))
    end

    def test_board_pick_checker_3
        gboard = Board.new
        player = "x"
        choice = "k" 
        assert_equal(false,Board.new.pick_check(choice))
    end
    
    
    
    

end    
