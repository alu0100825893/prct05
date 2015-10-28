require 'lib/frac'
require 'test/unit'

class TestFraccionario < Test::Unit::TestCase
    def setup
        @cero = Fraccionario.new(0,1)
        @unidad = Fraccionario.new(1,1)
    end
    def test_simple
        assert_equal("(0,1)", @cero.to_s)
        assert_equal("(1,1)", @unidad.to_s)
        assert_raise(RuntimeError) {Fraccionario.new(1,0)}
        assert_equal("(1,1)", Fraccionario.new(3,3).to_s,"Error al simplificar")
        assert_equal("(2,5)", Fraccionario.new(6,15).to_s,"Error al simplificar")
        assert_equal(24, @unidad.mcm(8,3),"Error al calcular el minimo comun multiplo")
        assert_equal(4, @unidad.mcm(2,4),"Error al calcular el minimo comun multiplo")
        assert_equal("(1,1)",(Fraccionario.new(2,4)+Fraccionario.new(1,2)).to_s,"Suma mal hecha")
        assert_equal("(11,14)",(Fraccionario.new(3,2)-Fraccionario.new(5,7)).to_s,"Resta mal hecha")
        assert_equal("(15,14)",(Fraccionario.new(3,2)*Fraccionario.new(5,7)).to_s,"Multiplicacion mal hecha")
    end
    def test_type_check
        assert_raise(RuntimeError) {Fraccionario.new('1','1')}
    end
    
end