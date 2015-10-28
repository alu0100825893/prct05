
class Fraccionario
    attr_reader :x, :y
    def initialize(n,d)
        raise RuntimeError, 'El numerador no es un numero' unless n.is_a? Numeric
        raise RuntimeError, 'El denominador no es un numero' unless d.is_a? Numeric
        raise RuntimeError, 'El denominador es cero' unless d != 0
        divisor = gcd(n,d)
        n = n / divisor
        d = d / divisor
        @n, @d = n, d
    end
    def to_s
    "(#{@n},#{@d})"
    end
    def gcd(n, d)
        n1 = n.abs
        n2 = d.abs
        gcd = 1
        k = 1
        while (k <= n1 and k <= n2)
            if (n1 % k == 0 and n2 % k == 0)
                gcd = k
            end
            k += 1
        end
        return gcd
    end
    
end