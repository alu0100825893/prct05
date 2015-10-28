
class Fraccionario
    attr_reader :n, :d
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
    
    def mcm(d1,d2)
        mcm = 1
        if (d1 < d2)
            mcm = d2
        else
            mcm = d1
        end
        aux1 = d1
        aux2 = d2
        while (((mcm % aux1) != 0) or ((mcm % aux2) != 0))
            if (aux1 < aux2)
               aux1 = aux1+d1
            else
                aux2 = aux2+d2
            end
            if (aux1 < aux2)
                mcm = aux2
            else
                mcm = aux1
            end
        end
        return mcm
    end
    
    def +(other)
        mcm = mcm(@d,other.d)
        Fraccionario.new((mcm / @d * @n)+(mcm / other.d * other.n),mcm)
    end
    
end