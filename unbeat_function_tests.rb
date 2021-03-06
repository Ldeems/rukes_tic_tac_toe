require 'minitest/autorun'
require_relative 'unfuncs.rb'


class Test_unai < Minitest::Test 

    # def test_practice_test
    #     assert_equal(6,6)
    # end 
    
    # def test_winningmove_fucn_1
    #     board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    #     player = "x"
    #     assert_equal(false, winningmove(board, player))
    # end 
    
    # def test_winningmove_fucn_2
    #     board = ["x", "2", "x", "4", "5", "6", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("2", winningmove(board, player))
    # end 

    # def test_winningmove_fucn_3
    #     board = ["1", "2", "3", "x", "5", "x", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("5", winningmove(board, player))
    # end 

    # def test_winningmove_fucn_4
    #     board = ["1", "2", "3", "4", "5", "6", "x", "8", "x"]
    #     player = "x"
    #     assert_equal("8", winningmove(board, player))
    # end 

    # def test_winningmove_fucn_5
    #     board = ["1", "2", "3", "x", "5", "6", "x", "8", "9"]
    #     player = "x"
    #     assert_equal("1", winningmove(board, player))
    # end

    # def test_winningmove_fucn_6
    #     board = ["1", "x", "3", "4", "x", "6", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("8", winningmove(board, player))
    # end

    # def test_winningmove_fucn_7
    #     board = ["1", "2", "x", "4", "5", "6", "7", "8", "x"]
    #     player = "x"
    #     assert_equal("6", winningmove(board, player))
    # end

    # def test_winningmove_fucn_8
    #     board = ["x", "2", "3", "4", "x", "6", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("9", winningmove(board, player))
    # end

    # def test_winningmove_fucn_9
    #     board = ["1", "2", "3", "4", "x", "6", "x", "8", "9"]
    #     player = "x"
    #     assert_equal("3", winningmove(board, player))
    # end

    # def test_winningmove_fucn_10
    #     board = ["x", "2", "3", "4", "5", "6", "7", "8", "x"]
    #     player = "x"
    #     assert_equal("5", winningmove(board, player))
    # end

    # def test_blockmove_1
    #     board = ["o", "2", "3", "4", "5", "6", "7", "8", "o"]
    #     player = "x"
    #     assert_equal("5", blockmove(board, player))
    # end    

    # def test_blockmove_2
    #     board = ["o", "2", "3", "o", "5", "6", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("7", blockmove(board, player))
    # end 

    # def test_blockmove_3
    #     board = ["1", "o", "o", "4", "5", "6", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("1", blockmove(board, player))
    # end

    # def test_blockmove_4
    #     board = ["1", "2", "o", "4", "5", "o", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("9", blockmove(board, player))
    # end

    # def test_blockmove_5
    #     board = ["1", "2", "3", "4", "o", "6", "o", "8", "9"]
    #     player = "x"
    #     assert_equal("3", blockmove(board, player))
    # end

    # def test_blockmove_6
    #     board = ["1", "2", "3", "4", "5", "6", "o", "o", "9"]
    #     player = "x"
    #     assert_equal("9", blockmove(board, player))
    # end

    # def test_blockmove_7
    #     board = ["1", "2", "o", "4", "5", "6", "o", "8", "9"]
    #     player = "x"
    #     assert_equal("5", blockmove(board, player))
    # end

    # def test_blockmove_8
    #     board = ["1", "2", "3", "4", "o", "o", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("4", blockmove(board, player))
    # end

    # def test_firstmove_1
    #     board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    #     assert_equal("5", firstmove(board))
    # end 
    
    # def test_firstmove_2
    #     board = ["1", "o", "3", "4", "5", "6", "7", "8", "9"]
    #     assert_equal("1", firstmove(board))
    # end 

    # def test_firstmove_3
    #     board = ["o", "2", "3", "4", "5", "6", "7", "8", "9"]
    #     assert_equal("5", firstmove(board))
    # end 

    # def test_firstmove_4
    #     board = ["1", "2", "3", "o", "5", "6", "7", "8", "9"]
    #     assert_equal("1", firstmove(board))
    # end 

    # def test_firstmove_5
    #     board = ["1", "2", "3", "o", "5", "6", "7", "o", "9"]
    #     assert_equal("9", firstmove(board))
    # end 

    # def test_firstmove_6
    #     board = ["1", "2", "3", "4", "5", "o", "7", "8", "9"]
    #     assert_equal("9", firstmove(board))
    # end 

    # def test_firstmove_7
    #     board = ["1", "2", "3", "4", "o", "6", "7", "8", "9"]
    #     assert_equal("7", firstmove(board))
    # end 

    def test_secondmove_1
        board = ["1", "2", "3", "4", "o", "6", "7", "8", "x"]
        player = "o"
        assert_equal("7", secondmove(board,player))
    end
    
    # def test_secondmove_2
    #     board = ["x", "2", "3", "o", "5", "6", "7", "8", "o"]
    #     player = "x"
    #     possible = ["7","3"]
    #     assert_equal(true, possible.include?(secondmove(board,player)))
    # end 

    # def test_secondmove_3
    #     board = ["x", "o", "3", "4", "5", "6", "o", "8", "9"]
    #     player = "x"
    #     possible = ["9","3"]
    #     assert_equal(true, possible.include?(secondmove(board,player)))
    # end 

    # def test_secondmove_4
    #     board = ["1", "2", "o", "4", "5", "6", "7", "o", "x"]
    #     player = "x"
    #     possible = ["7","1"]
    #     assert_equal(true, possible.include?(secondmove(board,player)))
    # end 

    # def test_secondmove_5
    #     board = ["1", "o", "3", "4", "x", "6", "o", "8", "x"]
    #     player = "x"
    #     possible = ["3","1","9"]
    #     assert_equal(true, possible.include?(secondmove(board,player)))
    # end
    
    # def test_secondmove_6
    #     board = ["x", "o", "3", "4", "5", "o", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("5", secondmove(board,player))
    # end
    
    # def test_secondmove_7
    #     board = ["x", "o", "3", "o", "5", "6", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("5", secondmove(board,player))
    # end

    # def test_secondmove_8
    #     board = ["x", "2", "3", "o", "5", "6", "7", "o", "9"]
    #     player = "x"
    #     assert_equal("5", secondmove(board,player))
    # end

    # def test_secondmove_9
    #     board = ["1", "2", "3", "4", "5", "o", "7", "o", "x"]
    #     player = "x"
    #     assert_equal("5", secondmove(board,player))
    # end

    # def test_secondmove_10
    #     board = ["1", "2", "o", "4", "o", "x", "7", "8", "9"]
    #     player = "x"
    #     assert_equal("1", secondmove(board,player))
    # end
    
    # def test_secondmove_11
    #     board = ["o", "2", "3", "4", "x", "6", "7", "8", "o"]
    #     player = "x"
    #     assert_equal("2", secondmove(board,player))
    # end

    # def test_secondmove_12
    #     board = ["1", "2", "o", "4", "x", "6", "o", "8", "9"]
    #     player = "x"
    #     assert_equal("2", secondmove(board,player))
    # end

    # def test_thirdmove_1
    #     board = ["o", "2", "3", "4", "o", "x", "7", "8", "x"]
    #     player = "o"
    #     assert_equal("3", thirdmove(board,player))
    # end
    
    # def test_thirdmove_2
    #     board = ["o", "2", "3", "x", "o", "6", "7", "8", "x"]
    #     player = "o"
    #     assert_equal("3", thirdmove(board,player))
    # end

    # def test_thirdmove_3
    #     board = ["o", "o", "3", "4", "x", "6", "x", "8", "o"]
    #     player = "x"
    #     openmoves = ["3", "4","6","8"]
    #     assert_equal(true,openmoves.include?(thirdmove(board,player)))
    # end
end    