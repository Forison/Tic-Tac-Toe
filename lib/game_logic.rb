class GameLogic
    @@WINS=[ [1,2,3],[1,4,7],[1,5,9],[2,5,8],[3,6,9],[3,5,7],[4,5,6],[7,8,9] ]
    @@options=[]
    # operate based on moves made by player 
    def initialize(player_one,player_two,board)
        @player_one=player_one
        @player_two=player_two
        @board=board
    end

    def game_play
        # positions=[1,2,3,4,5,6,7,8,9]
        puts " welcome to the tic-tac-toe game "
        @board.display
        puts "enter username for player_one"
        @player_one=gets.chomp.to_s
        puts "#{@player_one}, please enter symbol for identifying you on the board"
        user_id_1=gets.chomp.to_s.upcase
        puts "enter username for player_two"
        @player_two=gets.chomp.to_s
        puts "#{@player_two}, please enter symbol for identifying you on the board"
        user_id_2=gets.chomp.to_s.upcase

        6.times do | a |
          @board.display
          current_player = a.even? ? @player_one : @player_two
          puts "#{current_player}, select an option form 1...9"
          option=gets.chomp.to_i
          character = (a.even? ? user_id_1 : user_id_2).to_s
          
          @board.post[option-1] = character if @board.post.include? option
          @@options.push(option)
        end
      @board.display        
    end

    def valid_move ( input )
        return "out of range" if input > 9 || input < 0
        return "number was already selected " if @@options.include?( input )
        true
    end
end