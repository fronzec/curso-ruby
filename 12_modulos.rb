# Modularizacion de codigo, agrupar funcionalidades dentro de un mismo contenedor

# Para declarar un modulo usamos la palabra reservada module,
# Dentro de cada modulo podemos declarar nuestras clases
module Model
    class Company
    end
    class Employee
    end
end

module Reports
    class ExcelReporter
        def build
        puts "Generating excel report"
        end
    end
    class EmailReporter
    end
end

# Para usar clases dentro de modulos debemos referenciar primero al modulo,
# seguido de dos puntos '::' y despues el nombre de la clase
excel_report = Reports::ExcelReporter.new
excel_report.build
