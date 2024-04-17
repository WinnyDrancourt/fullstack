puts "Quel est votre année de naissance ?"
print "> "
birth_year = gets.chomp.to_i
past_year = 2017
puts "En 2017, vous aviez #{past_year-birth_year} ans"