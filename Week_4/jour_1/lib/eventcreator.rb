require 'pry'
require 'time'

class EventCreator

  def initialize
    puts "Titre de l'évenement :"
    print "> "
    title = gets.chomp

    puts "Date et Heure de l'évenement (DD/MM/YYYY HH:mm):"
    print "> "
    start = gets.chomp

    puts "Durée de l'évenement (en minute):"
    print "> "
    duration = gets.chomp

    puts "Qui sont les participants :"
    print "> "
    list = gets.chomp
    attendees = list.split(", ")

    system "clear"
    puts "Voici le résumé de votre évenement"
    puts Event.new(start, duration, title, attendees).to_s
  end
end