# Proc: 
# Lamda: Funciones anonimas o tambien llamadas sin nombre

# Definir y llamar a un proc
saludar = Proc.new {|nombre| puts "Hola #{nombre}"}
saludar.call "Edu"

# Ejemplo mas complejo
class Transaction
    def exec
        puts "ejecutando transaccion"
        if block_given? # Si se dio un block dado
            yield # Ejecutara el bloque que se le paso a este metodo
        end
    end
end

tx = Transaction.new
tx.exec { puts "Despues de la transaccion"}
