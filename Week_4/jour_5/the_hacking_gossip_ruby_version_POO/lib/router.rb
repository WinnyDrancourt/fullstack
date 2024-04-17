require_relative 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    clear
    puts "Welcom to the GOSSIP PROJECT (THP)"
    while true
      #On affiche le menu
      puts " What do you want ?"
      puts "[1] I want to create a Gossip."
      puts "[2] I want to read all Gossip"
      puts "[3] I want to delete a Gossip"
      puts "[4] I want to quit this shit of application !"
      params = gets.chomp.to_i
      case params
        when 1
          puts "You want to create a piece of shit ?"
          @controller.create_gossip
        when 2
          clear
          puts "Do you really need read this pooh ?"#
          @controller.index_gossips
          puts
        when 3
          clear
          @controller.index_gossips
          puts "Gossip to delete"
          @controller.delete_gossip
        when 4
          puts "Take a breath !"
          break #This break, just make a exit of infinite loop.
        else
          puts "Are you kidding me ? it isnt a valid choice, Idiot !"
      end
    end
  end

  def clear
    system ("clear")
  end
end