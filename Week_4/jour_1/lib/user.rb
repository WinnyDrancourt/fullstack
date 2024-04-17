require 'pry'


#Creation d'un utilisateur definit par son mail et son age
class User
  attr_accessor :email, :age
  @@all_user = []


  def initialize(email, age) #new user(email, old) creating
    @email = email
    @age = age
    @@all_user << self
  end

  def to_s
    puts "Email : #{@email}."
    puts "Votre age : #{@age} ans."
  end

  def self.find_by_email(email)
    @@all_user.each do |user|
      if user.email == email
        puts "Voici l'age de l'utilisateur : #{user.age}"
        return user
      end
    end
    puts "Aucun utilisateur n'a cet email"
    return false
  end


  def self.all #Voir tout les Users
    @@all_user
  end

end
