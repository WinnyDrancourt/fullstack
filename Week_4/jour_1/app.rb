#Recupere tout les gems du Gemfiles
require 'pry'

require_relative 'lib/eventcreator'
require_relative 'lib/usercreator'
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/calendar'

#Some Fake user
demian = User.new("dmn@gmail.com", 29)
julie = User.new("julie@aol.com", 23)
marion = User.new("marion@hotmail.com", 25)
mrtruc = User.new("truc@machin.com.com", 99)
mrbidule = User.new("bidule@chose.fr", 99)

#Some Fake event
event1 = Event.new("2019-01-13 09:00", 10, "Rdv passé", ["truc@machin.com", "bidule@chose.fr"])
event2 = Event.new("2024-02-14 09:00", 30, "Love RDV", ["marion@hotmail.com", "dmn@gmail.com"])
event3 = Event.new("2024-02-5 09:00", 10, "some sports", ["truc@machin.com", "bidule@chose.fr"])


def menu
  puts
  puts "[1] Creation d'utilisateur."
  puts
  puts "[2] Vue des Utilisateurs."
  puts
  puts "[3] Creation d'event"
  puts
  puts "[4] Vue des events"
  puts
  puts "[5] Calendar"
  puts
  puts "Tout autre pour quitter"
  input = gets.chomp
end

def perform
  system "clear"
case menu
  when "1"
    system "clear"
    print "votre nom >"
    user = gets.chomp
    user = UserCreator.new
    puts "Enter to return at menu"
    option = gets
    perform
  when "2"
    system "clear"
    puts User.all
    puts "Enter to return at menu"
    option = gets
    perform
  when "3"
    system "clear"
    print "nom d'event >"
    event = gets.chomp
    EventCreator.new
    puts "Enter to return at menu"
    option = gets
    perform
  when "4"
    system "clear"
    puts Event.all
    puts "Enter to return at menu"
    option = gets
    perform
  when "5"
    system "clear"
    CalendarDisplayer.new
    puts "Enter to return at menu"
    perform
  end
end
perform
#binding.pry
