puts "Donner un chiffre :"
print "> "
number = gets.chomp.to_i
number.times do |j|
    puts "#{j+1} : Salut, ça farte ?"
end