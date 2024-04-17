puts "Quel est votre année de naissance ?"
print "> "
birth_year =  gets.chomp.to_i
actual_year = Time.now.year

number = actual_year - birth_year

(number+1).times do |j|
    if actual_year-birth_year-j == j
        puts "Il y as #{j}, tu avais la moitié de l'âge que tu as aujourd'hui "
    else
    puts "Il y as #{actual_year-birth_year-j}, tu avais #{j}"
    end
end