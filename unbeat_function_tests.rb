require 'minitest/autorun'
require_relative 'unwin.rb'
require_relative 'unblocker.rb'

class Test_unai < Minitest::Test 

    def test_practice_test
        assert_equal(6,6)
    end 
    
    def test_winningmove_fucn_1
        board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
        assert_equal(false, winningmove(board))
    end    

end    