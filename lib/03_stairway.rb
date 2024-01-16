puts "bienvenue dans mon jeu"

def clear_screen
    system ('clear')
end

def escaliers(n)
    étage = 0
    position_joueur = 10 - n
    for i in 0 .. 10
        if étage == position_joueur
            nombre_espace = 10 - i
            nombre_espace.times do
                print " "
            end
            print "o"
        else
            nombre_espace = 10 - i + 1
            nombre_espace.times do |i|
                print " "
            end
        end
        for n in 1 .. i 
            print "#"
        end
        puts ""
        étage = étage + 1
    end
end

a = 0
compteur = 0

while a < 10
    compteur = compteur + 1
    b = rand(1..6)
    escaliers(a)
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

escaliers(a)
