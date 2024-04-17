numbers = Array.new
loop do 
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (entre 1 et 25)"
    numbers = gets.chomp.to_i
    break if numbers.between?(1,25)
end

puts "Voici la pyramide :"
for number in 1..numbers
    number.times {print "#"}
        puts
end