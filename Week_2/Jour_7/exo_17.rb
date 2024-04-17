stair = 0
loop do 
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (entre 1 et 25)"
    stair = gets.chomp.to_i
    break if stair.between?(1,25)
end

puts "Voici la pyramide :"
for number in 1..stair
    (stair-number).times {print " "}
    number.times {print "#"}
    (number-1).times {print "#"}
        puts
end