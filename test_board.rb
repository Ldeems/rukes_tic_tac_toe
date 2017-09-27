require 'minitest/autorun'
require_relative 'board.rb'

class Test_board < Minitest::Test 

    def test_board_1
        board = Board.new()
        assert_equal(["1","2","3","4","5","6","7","8","9"], board.board)
    end    

end    
