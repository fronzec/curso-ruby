# Strings
# para declarar un string lo hacemos con comillas simples o dobles o notacion especial
saludo = "Hola"
saludo = 'Hola'
saludo = %q(Hola)# Util si nuestro string incluye comillas dobles como parte de la cadena
saludo = %Q(Hola)

# Interpolacion en strings, solo funciona con comillas dobles
nombre = "edu"
mensaje = "Hola #{nombre}"

# Operaciones
res = "Hola " + "Mundo" #= "Hola Mundo"
resmul = "Hola" * 5 # = "HolaHolaHolaHolaHola"

# Algunos metodos
saludo.class
saludo.methods
saludo.upcase
saludo.downcase
saludo.swapcase
saludo.length
saludo.include? "Ho"
saludo.empty?

nombre_2 = "Steve Woz"
otro = nombre_2.gsub("Woz", "Wozniak") # Devuelve una copia, no altera el objeto original
nombre_2.gsub!("Woz", "Wozniak") # Los metodos con ! alteran directamente el objeto original
