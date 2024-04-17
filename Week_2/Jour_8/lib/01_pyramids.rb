def ask_stair
    stair = 0
    loop do 
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisi un nombre impair)"
        stair = gets.chomp.to_i
        break if stair.odd?
    end
    return stair = stair/2+1
end

# def half_pyramid(stair)
#     puts "Voici la pyramide"
#     for number in 1..stair
#         number.times {print "#"}
#         puts
#     end
# end

def full_pyramid(stair)
    puts "Voici la pyramide :"
    for number in 1..stair
        (stair-number).times {print " "}
        number.times {print "#"}
        (number-1).times {print "#"}
        puts
    end
    
end
def Reverse_pyramid(stair)
    for number in 1..(stair-1)
        (number).times {print " "}
        (stair-number).times {print "#"}
        (stair-number-1).times {print "#"}       
        puts
    end
    
end

def perform
    stair = ask_stair
    full_pyramid(stair)
    Reverse_pyramid(stair)
end

perform