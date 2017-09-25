require 'minitest/autorun'
require_relative 'toe_funcs.rb'

class Toe_test < Minitest::Test 
    
def test_update_board
    board = ["1","2","3","4","5","6","7","8","9"]
    player1 = "x"
    choice = 2
    assert_equal(["1","x","3","4","5","6","7","8","9"], movepick(player1,choice))
end 

def test_update_board_1
    board = ["1","2","3","4","5","6","7","8","9"]
    player2 = "o"
    choice = 4
    assert_equal(["1","2","3","o","5","6","7","8","9"], move(player2,choice))
end 

def test_update_board_2
    board = ["1","x","3","o","5","6","7","8","9"]
    player1 = "x"
    choice = 8
    assert_equal(["1","x","3","o","5","6","7","x","9"], makemove(board,player1,choice))
end 

def test_change_player_1
    player = "x"
    assert_equal("o", playerchange(player))
end

def test_valid_move_1
    board = ["1","x","3","o","5","6","7","x","9"]
    player = "o"
    choice = 2
    assert_equal("invalid move", validmove(board,player,choice))
end 

def test_valid_move_2
    board = ["1","x","3","o","5","6","7","x","9"]
    player = "x"
    choice = 1
    assert_equal("valid move", validmove(board,player,choice))
end 







end    

