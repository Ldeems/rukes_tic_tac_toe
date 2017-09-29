require 'minitest/autorun'
require_relative 'player_class.rb'

class Test_player < Minitest::Test
    
    def test_player_change_1
        player = Player.new
        assert_equal("x",player.playerchange)   
    end   
    
    def test_player_change_2
        player = Player.new
        player.playerchange
    
        assert_equal("o",player.playerchange)   
    end 

end    
