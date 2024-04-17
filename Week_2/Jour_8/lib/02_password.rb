
def sign_up
    puts "Veuillez, inscrire un mot de passe pour votre inscription :"
    print "> "
    password = gets.chomp
    return password
end


def login(password)
        puts "Veuillez, entrer votre mot de passe pour vous authentifier :"
        print "> "
        log = gets.chomp
    if log != password
        loop do 
            puts "Mot de passe erroné, veuillez reessayer :"
            print "> "
            log = gets.chomp
            break if log == password
        end
    end
    return log
end

def welcom_screen
    puts "Welcome in you NASA desktop"
end

def perform
    password = sign_up
    login (password)
    welcom_screen
end


perform