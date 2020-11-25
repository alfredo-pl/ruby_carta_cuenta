class CuentaBancaria
    #accesos
    attr_accessor :nombre_usuario
    
    #metodo constructor 
    def initialize(nombre_usuario, numero_cuenta, vip=0)
            
        #excepcion que levanta si el numero de cuenta es <> de 8
               cant = numero_cuenta.digits().count()
        raise RangeError, "El numero de cuenta tiene que ser 8 digitos, usted usa #{cant}" if cant < 8 || cant > 8
        raise RangeError, "El VIP solo recibe 0 y 1, usted usa #{vip}" if vip > 1 || vip < 0
            @numero_cuenta = numero_cuenta
            @nombre_usuario = nombre_usuario
            @vip = vip
        
    end
 
    #metodo que devuelve el numero de cuenta 
    
    def numeroCuenta
        numero = @numero_cuenta
            if @vip == 0
                n = "0-"
            else
                n = "1-"
            end
        @numero_cuenta = n+numero.to_s
    end


end

c1 = CuentaBancaria.new('alfredo',12345678,-1)
c1.nombre_usuario='ale'
puts c1.numeroCuenta
puts c1.nombre_usuario

