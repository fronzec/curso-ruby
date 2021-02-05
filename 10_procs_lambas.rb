# Block: pequeñas funciones anonimas que pueden ser pasadas en otros metodos
# Lamda: Una forma de definir un bloque y sus parametros, usa una notacion especial,
#       se puede salvar a una variable para su uso futuro, Funciones anonimas o tambien llamadas sin nombre
# Proc: Concepto similar a un lambda, se crean de diferente manera, un lambda es un objeto Proc especial.

# Algunas diferencias:
# - Lambdas are defined with -> {} and procs with Proc.new {}.
# - Procs return from the current method, while lambdas return from the lambda itself.
# - Procs don’t care about the correct number of arguments, while lambdas will raise an exception.

# Lambda
say_something = -> { puts "This is a lambda" }
say_something.call

# Definir y llamar a un proc
saludar = Proc.new {|nombre| puts "Hola #{nombre}"}
saludar.call "Edu"

# Ejemplo mas complejo
class Transaction
    def exec
        puts "ejecutando transaccion"
        if block_given? # Si se dio un block dado
            yield # Ejecutara el bloque que se le paso a este metodo
            # Podemos tener tantos yield como queramos
        end
    end
end

tx = Transaction.new
tx.exec { puts "Despues de la transaccion"}
