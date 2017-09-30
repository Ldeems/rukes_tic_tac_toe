require 'minitest/autorun'
require_relative 'rplayer.rb'

class Test_rplayer < Minitest::Test

    # def test_rplayer_1
    #     board = ["1","2","3","4","5","6","7","8","9"]
    #     ther = Rplayer.new.rmove(board)
    #     assert_equal(true, [0,1,2,3,4,5,6,7,8].include?(ther))
    # end

    def test_rplayer_
        board = ["1","x","x","o","o","x","o","x","o"]
        ther = Rplayer.new.rmove(board)
        assert_equal(true, [0,1,2,3,4,5,6,7,8].include?(ther))
    end
end    