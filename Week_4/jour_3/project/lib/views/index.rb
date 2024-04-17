class Menu
  def show_menu
    puts
    puts "Scapping de Mails, des Mairies du Val d'Oise"
    puts "Sous quelle forme on les recupère ?"
    puts
    puts "[1] Générer un fichier JSON"
    puts "[2] Générer un fichier CSV"
    # puts "[3] Affichage des résultats !"
    puts
    puts "[0] Quit"
    puts
    print "> "
  end
  def choice_menu(choice)
    if choice == 0
      system ("clear")
      exit
    elsif choice == 1
      scrap = Scrapping.new.save_as_json
    elsif choice == 2
      scrap = Scrapping.new.save_as_csv
    elsif choice == 3
    end
  end
end