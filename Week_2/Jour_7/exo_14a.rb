mails = Array.new

50.times do |j|
    newmail = "jean.dupont.%02d@email.fr" %[j+1]
    # puts "#{newmail}"
    mails << newmail
end

puts "Mails avec chiffre pair"
mails.each do |even|
    number = even.scan(/\d+/).first.to_i
    if number.even?
    puts "#{even}"
    end
end
puts "Voir ce que comporte l'array mails"
print mails
puts