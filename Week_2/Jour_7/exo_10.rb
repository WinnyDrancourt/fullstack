puts "Quel est votre année de naissance ?"
print "> "
birth_year =  gets.chomp.to_i
actual_year = Time.now.year

number = actual_year - birth_year

(number+1).times do |an|
    puts "En #{birth_year+an}, tu avais #{an}"
end