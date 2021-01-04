# Siempre es importante hacer unit test
# Minitest, Rspec son frameworks para hacer pruebas automatizadas
# En este ejemplo veremos una forma de hacer testing automatizado no usando ningun
# framework de ruby

# Archivos de prruebas
class Calculator
    def sum(a,b)
        a+b
        # Ejemplo de instruccion para hacerlo fallar
        # a+a
    end

    def substract(a,b)
        a-b
    end

end

calc = Calculator.new
test_sum_expected = {
[1,2] => 3,
[5,6] => 11,
[100,1] => 101
}

# Definicion de los tests
test_sum_expected.each do |input, expected_result|
    # Iteramos nuestro hash para cada escenario de testing
    # en caso de que un escenario falle lanzamos una excepcion
    if !( calc.sum(input[0], input[1]) == expected_result )
        raise "Test failed for input #{input}. Expected result #{expected_result}"
    end
end
