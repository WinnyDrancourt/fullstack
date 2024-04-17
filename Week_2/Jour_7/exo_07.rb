puts "Donnez un chiffre :"
print "> "
number = gets.chomp.to_i
(number+1).times do |j|
    puts "#{j}"
end
