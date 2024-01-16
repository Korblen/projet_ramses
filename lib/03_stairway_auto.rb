def jeu
    compteur = 0
    a = 0
    while a < 10
        compteur = compteur + 1
        b = rand(1..6)
        if b == 1
            if a > 0
                a = a - 1
            end
        elsif b > 4
            a = a + 1
        end
    end
    return compteur
end

def automatisation(a)
    blurg = []
    if a < 0
        return mauvaise valeur
    end
    for i in 1 .. a
        puts "automatisation n°" + i.to_s
        blurg.append(jeu.to_i)
    end
    return blurg
end

puts "nombre d'automatisation"
valeur = gets.chomp.to_i
a = automatisation(valeur)
b = a.inject{ |sum, el| sum + el }.to_f / a.size
puts "moyenne de " + b.to_s

