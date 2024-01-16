def signup
    puts "entrez un mot de passe"
    mdp = gets.chomp
    return (mdp)
end

def login(gné)
    try = 
    print "entrez votre mot de passe :"
    while gné != try 
        try = gets.chomp
        puts ""
        if try == gné
            welcome_screen
        else
            print "mauvais mot de passe, réessayez (boulet) :"
        end
    end
end

def welcome_screen
    puts "Bienvenue dans la zone secrète (la plus facile a trouver)"
    puts "Les illuminatis existent."
end

mdp = signup
login(mdp)
