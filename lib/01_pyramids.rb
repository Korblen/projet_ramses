puts "choisis un nombre IMPAIR entre 1 et 25 "
nombre_utilisateur = gets.chomp.to_i
def pyramide_normale(nbr)
    for i in 1 .. nbr
        nombre_espace = nbr - i
        nombre_espace.times do |i|
                print " "
        end
        for n in 1 .. i 
            print "#"
        end
        for v in 1 .. (i - 1)
            print "#"
        end
        puts ""
    end
end

def pyramide_inverse (nbr)
    for i in 1 .. nbr
        nombre_espace = i - 1
        (nombre_espace + 1).times do
                print " "
        end
        for n in 1 .. (nbr - i + 1)
            print "#"
        end
        for v in 1 .. (nbr - i)
            print "#"
        end
        puts ""
    end
end

def pyramide_chelou(nbr)
    if nbr.even? == true
        puts "nombre IMPAIR BORDEL"
    else
        pyramide_normale(nbr)
        nbr = nbr - 1
        pyramide_inverse(nbr)
    end
end

pyramide_chelou(nombre_utilisateur)