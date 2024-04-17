puts "Ecrivez un chiffre :"
print "> "
number = gets.chomp.to_i
(number-1).times do |j|
    puts " #{j+1} : Bonjour toi !"
end
