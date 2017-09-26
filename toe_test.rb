require 'minitest/autorun'
require_relative 'toe_funcs.rb'

class Toe_test < Minitest::Test 
    
# def test_update_board
#     board = ["1","2","3","4","5","6","7","8","9"]
#     player1 = "x"
#     choice = 2
#     assert_equal(["1","x","3","4","5","6","7","8","9"], movepick(player1,choice))
# end 

# def test_update_board_1
#     board = ["1","2","3","4","5","6","7","8","9"]
#     player2 = "o"
#     choice = 4
#     assert_equal(["1","2","3","o","5","6","7","8","9"], move(player2,choice))
# end 

# def test_update_board_2
#     board = ["1","x","3","o","5","6","7","8","9"]
#     player1 = "x"
#     choice = 8
#     assert_equal(["1","x","3","o","5","6","7","x","9"], makemove(board,player1,choice))
# end 

# def test_change_player_1
#     player = "x"
#     assert_equal("o", playerchange(player))
# end

# def test_valid_move_1
#     board = ["1","x","3","o","5","6","7","x","9"]
#     player = "o"
#     choice = 2
#     assert_equal("invalid move", validmove(board,player,choice))
# end 

# def test_valid_move_2
#     board = ["1","x","3","o","5","6","7","x","9"]
#     player = "x"
#     choice = 1
#     assert_equal("valid move", validmove(board,player,choice))
# end 

def test_no_win
    board = ["x","2","x","o","5","o","7","x","o"]
    player = "x"
    choice = 1
    assert_equal(false, winner(board))
end 

def test_winnig_1
    board = ["x","x","x","o","5","o","7","x","o"]
    player = "x"
    choice = 1
    assert_equal(true, winner(board))
end 

def test_winnig_2
    board = ["x","2","x","o","o","o","7","x","9"]
    player = "o"
    choice = 5
    assert_equal(true, winner(board))
end

def test_winnig_3
    board = ["1","2","3","x","x","6","7","x","9"]
    player = "x"
    choice = 9
    assert_equal(false, winner(board))
end

def test_winnig_4
    board = ["o","2","x","4","o","x","7","x","o"]
    player = "o"
    choice = 5
    assert_equal(true, winner(board))
end

def test_winnig_5
    board = ["1","2","x","o","x","6","x","o","9"]
    player = "x"
    choice = 9
    assert_equal(true, winner(board))
end







end    

