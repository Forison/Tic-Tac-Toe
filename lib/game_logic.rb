require 'set'

class GameLogic
    @@WINS=[[1,2,3],[1,4,7],[1,5,9],[2,5,8],[3,6,9],[3,5,7],[4,5,6],[7,8,9]]
    @@options=[]

    # operate based on moves made by player 
    def initialize(player_one,player_two,board)
        @player_one=player_one
        @player_two=player_two
        @board=board
    end

    def valid_move? ( input )
        return "out of range" if input > 9 || input < 0
        return "number was already selected " if @@options.include?( input )
        true
    end

    def board_full?
      return false if @board.post.any?{|x| x.is_a?(Integer)} 

      true
    end

    def winner_found
      @wins.each do |moves|
        puts "#{current_player} wins!" if Set.new(moves).length == 1;
      end
    end

    def game_play
        puts " welcome to the tic-tac-toe game "
        @board.display
        puts "enter username for player_one, the first letter of this name will be your player charater"
        @player_one=gets.chomp.to_s.capitalize
        user_id_1=@player_one[0].upcase
        puts "enter username for player_two, the first letter of this name will be your player charater"
        @player_two=gets.chomp.to_s.capitalize
        user_id_2=@player_two[0].to_s.upcase

        a = 0
        until board_full?
          @board.display
          
          current_player = a.even? ? @player_one : @player_two
          puts "#{current_player}, select an option form 1...9"
          option=gets.chomp.to_i 
          character = (a.even? ? user_id_1 : user_id_2).to_s
          

          @@WINS = @@WINS.each do |moves|
            if moves.include? option
              moves[option] = character
            end
          end
          @board.post[option-1] = character if @board.post.include? option
          
          @@options.push(option)
          a +=1
          puts @@WINS
        end
      @board.display  
      puts "board full!"
      puts "STALEMATE!"
    end
end