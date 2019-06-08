
require_relative 'board'
require_relative 'player'
require_relative 'game_logic'


board= Board.new
user_one = Player.new('user_one','O').name
user_two = Player.new('user_two','T').name

GameLogic.new(user_one,user_two,board).game_play