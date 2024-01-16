def say_hello (first_name)
    puts "Bonjour, " + first_name + " !"
end

def ask_first_name
    puts"Comment tu t'appelles ?"
    bla = gets.chomp
    return (bla)
end

first_name = ask_first_name
say_hello(first_name)