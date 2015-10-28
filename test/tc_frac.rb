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
    end
    def test_type_check
        assert_raise(RuntimeError) {Fraccionario.new('1','1')}
    end
    
end