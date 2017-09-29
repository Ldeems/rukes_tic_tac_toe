require 'minitest/autorun'
require_relative 'splayer.rb'

class Test_splayer < Minitest::Test

    def test_splayer_1
        board = ["1","2","3","4","5","6","7","8","9"]
        assert_equal(0,Splayer.new.smove(board))
    end 
    
    def test_splayer_2
        board = ["x","o","x","4","5","6","7","8","9"]
        assert_equal(3,Splayer.new.smove(board))
    end 
end    
    