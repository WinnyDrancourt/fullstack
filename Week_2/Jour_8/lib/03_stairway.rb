
    def random
        print "Put Enter to throw dice:" 
        roll = rand(6) +1
        puts "> #{roll} <"
        return roll
    end

    def progress(roll)
        if roll ==5 || roll ==6
            step = 1
            puts "Well played, you move up to next stair"      
        elsif roll ==1
            step = -1
            puts "Oh no, you need to move down"
        else roll ==2 || roll ==3 || roll ==4
            step = 0
            puts "Nice try but you dont move."
        end
        return step
    end

    def game
        position =1 
        turns_counter = 0
            while position != 10
                roll = random
                step = progress(roll)
                position = position + step
                if position <=0
                    position =1
                end
                puts "You are on steps #{position}"
                turns_counter += 1
            end

            puts "You need #{turns_counter}turn, for up to stair 10 !"
            return turns_counter
    end

    def average_finish_time
        games = 100000

        total_turns = 0.00
        games.times do 
            total_turns = total_turns + game
        end

        average = total_turns / games
        puts "You need #{average} turn to complete games"
        return average
    end

    average_finish_time