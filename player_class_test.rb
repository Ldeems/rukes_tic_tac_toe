require 'minitest/autorun'
require_relative 'player_class.rb'

class Test_player < Minitest::Test
    
    def test_player_change_1
        player = Player.new
        assert_equal("x",player.playerchange)   
    end    

end    
