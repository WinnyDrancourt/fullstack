mails = Array.new

50.times do |j|
    newmail = "jean.dupont.%02d@email.fr" %[j+1]
    mails << newmail
    if (j+1).even?
    puts "#{newmail}"    
    end
end

puts "Voir ce que comporte l'array mails"
print mails
puts