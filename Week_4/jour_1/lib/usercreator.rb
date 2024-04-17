require 'pry'
require 'time'

class UserCreator

  def initialize
    puts "Inserer votre adresse Email :"
    print "> "
    email = gets.chomp

    puts "Quel est votre âge ?"
    print "> "
    age = gets.chomp.to_i

    system "clear"
    puts "Voici le résumé de votre création d'utilisateur :"
    puts User.new(email, age).to_s
  end
end