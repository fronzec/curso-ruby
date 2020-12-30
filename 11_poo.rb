# POO 
class Person
    # Metodo de clase
    def self.suggested_name
        ["Edu","Juan","Oscar"]
    end

    # Metodo constructor, debe llamarse 'initialize'
    def initialize(name, age)
        # Atributos de instancia
        @name = name
        @age = age
    end
    # Getters
    def name
        # No necesitamos utilizar la palabra return, en ruby todos los metodos
        # regresan algo, retornan por defecto el valor de la ultima instruccion
        @name 
    end

    def age
        @age
    end

    # Setters
    # Para poder usar persona.name = "edu"
    # (persona.name = "edu").age = 7 <- encadenamiento de metodos
    def name=(name)
        @name = name
        self # Regresa el objeto y permite encadenar llamadas de metodos
    end

    def age=(age)
        @age = age
        self
    end
end

# Crear un objeto persona
persona1 = Person.new("lalo", 25)
puts persona1.name 
puts persona1.age

# Llamada al metodo de clase, se debe usar el nombre de la clase
puts Person.suggested_name

# Usando metaprogramacion para reducir la cantidad de codigo
class Persona
    # Usando el macro attr_accesor y symbols ruby generara los getters y setters
    attr_accessor :name, :age
    
    def self.suggested_name
        ["Edu","Juan","Oscar"]
    end

    def initialize(name, age)
        @name = name
        @age = age
    end
end

persona2 = Persona.new("Otro", 25)
puts persona2.name
puts persona2.age

# Declarando clases con metodos usando Struct, 
# no necesitamos getters y setters ni constructores, Struct lo hara por nosotros
class Animal < Struct.new(:type,:age)
end

animal1 = Animal.new("Turtle", 50)
puts animal1.type
puts animal1.age
