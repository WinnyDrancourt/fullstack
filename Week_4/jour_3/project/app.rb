require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/scrapping'
require 'views/index'

def perform
  menu = Menu.new
  menu.show_menu
  choice = gets.chomp.to_i
  menu.choice_menu(choice)
  puts
end
perform