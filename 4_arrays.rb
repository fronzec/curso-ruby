# Un array es un tipo de dato especial para poder almacenar una lista de objetos

# Declarar un array
letras = ["c","y","p","a"]

letras.class
letras.methods
letras.size
# Acceder al primer elemento
letras[0]

# Acceder de manera circular desde el final hacia el inicio
letras[-1] 

# Si queremos accedera una posicion inexstente ruby retornara 'nil'
# indicando que no hay nada ahi
letras[100]

letras.include? "a"

letras.first
letras.last

# Usando un lamba para preguntar a cada elemento del array
letras.count { |x| x == "q" }
# Para aplicar una transformacion a cada elemento
letras.map { |x| x*2 }
# Similar al filter de otros lenguejes
letras.select? {|x| x.empty? } 
letras.min
letras.max

# Los arreglos en ruby no tienen un tipo especifico, se pueden incluir todos los tipos de objetos
arreglo_complejo = [4, 4.5, "aasd", [], :simb]
arreglo_complejo.map {|x| x.class}

palabras = "hola mundo".split(" ")

# Algo complejo con operaciones encadenadas
puts("hola mundo".split(" ").map(|x| x.upcase).join("\n"))

# Para ordenar arrays
letras_ordenadas = letras.sort
