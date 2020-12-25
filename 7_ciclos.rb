# Ciclos

# Usando while
x = 1
while x < 5 do
    puts "x -> #{x}"
    x += 1
end

# Usando loop, es como un ciclo infinito y debemos detenerlo usando break
y = 1
loop do
    puts "y -> #{y}"
    y += 1
    break if y >= 5
end

# Usando un for y el tipo rango, la variable se autoincrementa
for i in 1..10 do
    puts "i -> #{i}"
end

# Usando arreglos y el metodo each y times
[1,2,3,4,5].each {|x| puts "x -> #{x}"}
4.times {|x| puts "x -> #{x}"}
