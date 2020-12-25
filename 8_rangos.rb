# Rangos, se declaran usando parentesis y dos numeros separados por dos puntos
# Rango
arange = (1..6)

# Rango inclusivo del limite derecho usando dos puntos
inclusive_range = (1..5)
puts inclusive_range.to_a

# Rango exclusivo del limite derecho usando tres puntos
exclusive_range = (1...5)
puts exclusive_range.to_a

# Tambien podemos generar rangos con caracteres
characters1 = ('a'..'d')
characters2 = ('a'...'d')

puts characters1.to_a
puts characters2.to_a
