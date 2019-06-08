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
        puts "#{@player_one} enter symbol for identifying you on the game"
        user_id_1=gets.chomp.to_s.upcase
        puts "enter username for player_two"
        @player_two=gets.chomp.to_s
        puts "#{@player_two} enter symbol for identifying you on the game"
        user_id_2=gets.chomp.to_s.upcase

        6.times do | a |
          @board.display
          puts "select an option form 1...9"
          option=gets.chomp.to_i

          
            if( option == 1 )
              if a.even? 
                 @board.post[0] = "#{user_id_1}"
              else
                @board.post[0] = "#{user_id_2}"
              end     
            end
            if( option == 2 )
              if a.even? 
                 @board.post[1] = "#{user_id_1}"
              else
                 @board.post[1] = "#{user_id_2}"
              end  
            end
            if( option == 3)
              if a.even? 
                 @board.post[2] = "#{user_id_1}"
              else
                 @board.post[2] = "#{user_id_2}"
              end  
            end
            if( option == 4 )
               if a.even? 
                 @board.post[3] = "#{user_id_1}"
               else
                 @board.post[3] = "#{user_id_2}"
               end  
            end
            if( option == 5 )
               if a.even? 
                 @board.post[4] = "#{user_id_1}"
               else
                 @board.post[4] = "#{user_id_2}"
               end  
            end
            if( option == 6 )
               if a.even? 
                 @board.post[5] = "#{user_id_1}"
               else
                 @board.post[5]= "#{user_id_2}"
               end  
            end
            if( option == 7 )
               if a.even? 
                 @board.post[6] = "#{user_id_1}"
               else
                 @board.post[6] = "#{user_id_2}"
               end 
            end
            if( option == 8 )
               if a.even? 
                 @board.post[7] = "#{user_id_1}"
               else
                 @board.post[7] = "#{user_id_2}"
               end  
            end
            if( option == 9)
               if a.even? 
                 @board.post[8] = "#{user_id_1}"
               else
                 @board.post[8]= "#{user_id_2}"
               end  
            end

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