puts "bienvenue dans mon jeu"

def clear_screen
    system ('clear')
end

a = 0
compteur = 0

while a < 10
    compteur = compteur + 1
    b = rand(1..6)
    sleep 0.5
    clear_screen
    if b == 1
        if a > 0
            a = a - 1
            puts "raté, vous redescendez d'un étage (étage " + a.to_s + " )"
        else
            puts "raté... mais vous ne pouvez pas redescendre !"
        end
    elsif b > 4
        a = a + 1
        puts "gagné, vous montez d'un étage ! (étage " + a.to_s + " )"
    else
        puts "rien ne se passe (étage " + a.to_s + " )"
    end
end
clear_screen
puts "vous êtes arrivé au dernier étage en " + compteur.to_s + " coups! Bravo "
