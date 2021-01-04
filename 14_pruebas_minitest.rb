# Minitest es parte de ruby, no es necesario instalarlo
# https://github.com/seattlerb/minitest

# Ver los modulos de minitest, en este caso autorun detectara los tests en automatico y los 
# ejecutara al correr el programa con "ruby 14_pruebas_minitest.rb"
require "minitest/autorun"

# Nuestra funcionalidad a probar
class Calculator
    def sum(a,b)
        a+b
    end

    def substract(a,b)
        a-b
    end

end

# Nuetra clase de pruebas, en este caso debe heredar de la clase Test dentro del modulo Minitest
class TestCalculator < Minitest::Test
    # El metodo setup se ejecutara una vez por clase, util para instanciar nuestros objetos a probar
    def setup
        @calc = Calculator.new
    end

    # Metodo de prueba, deben comenzar con el prefijo "test_"
    def test_sum_positive
        expected_result = @calc.sum(1,3)
        assert_equal expected_result, 4
    end

    def test_sum_negatives1
        expected_result = @calc.sum(-1,-3)
        assert_equal expected_result, -4
    end

    def test_sum_negatives2
        expected_result = @calc.sum(1,-3)
        assert_equal expected_result, -2
    end
end
