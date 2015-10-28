
class Fraccionario
    attr_reader :x, :y
    def initialize(n,d)
        raise RuntimeError, 'El numerador no es un numero' unless n.is_a? Numeric
        raise RuntimeError, 'El denominador no es un numero' unless d.is_a? Numeric
        raise RuntimeError, 'El denominador es cero' unless d != 0
        
        @n, @d = n, d
    end
    def to_s
    "(#{@n},#{@d})"
    end
    
    
end