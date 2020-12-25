# Regex, expresione regulares

# Para declarar un regex usamod el simbolo /
is_gmail_regex = /\w+@gmail.com/

# Para usan el regex tenemos que usar el metodo match
puts "simon@gmail.com".match is_gmail_regex

number_regex = /\d+/

puts "123".match number_regex
# Si no hay match regresara nil
puts "abc".match number_regex
