require 'minitest/autorun'
require_relative 'unwin.rb'
require_relative 'unblocker.rb'

class Test_unai < Minitest::Test 

    def test_practice_test
        assert_equal(6,6)
    end 
    
    def test_winningmove_fucn_1
        board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
        player = "x"
        assert_equal(false, winningmove(board, player))
    end 
    
    def test_winningmove_fucn_2
        board = ["x", "2", "x", "4", "5", "6", "7", "8", "9"]
        player = "x"
        assert_equal("2", winningmove(board, player))
    end 

    def test_winningmove_fucn_3
        board = ["1", "2", "3", "x", "5", "x", "7", "8", "9"]
        player = "x"
        assert_equal("5", winningmove(board, player))
    end 

    def test_winningmove_fucn_4
        board = ["1", "2", "3", "4", "5", "6", "x", "8", "x"]
        player = "x"
        assert_equal("8", winningmove(board, player))
    end 

    def test_winningmove_fucn_5
        board = ["1", "2", "3", "x", "5", "6", "x", "8", "9"]
        player = "x"
        assert_equal("1", winningmove(board, player))
    end

    def test_winningmove_fucn_6
        board = ["1", "x", "3", "4", "x", "6", "7", "8", "9"]
        player = "x"
        assert_equal("8", winningmove(board, player))
    end

    def test_winningmove_fucn_7
        board = ["1", "2", "x", "4", "5", "6", "7", "8", "x"]
        player = "x"
        assert_equal("6", winningmove(board, player))
    end

    def test_winningmove_fucn_8
        board = ["x", "2", "3", "4", "x", "6", "7", "8", "9"]
        player = "x"
        assert_equal("9", winningmove(board, player))
    end

    def test_winningmove_fucn_9
        board = ["1", "2", "3", "4", "x", "6", "x", "8", "9"]
        player = "x"
        assert_equal("3", winningmove(board, player))
    end

    def test_winningmove_fucn_10
        board = ["x", "2", "3", "4", "5", "6", "7", "8", "x"]
        player = "x"
        assert_equal("5", winningmove(board, player))
    end

end    