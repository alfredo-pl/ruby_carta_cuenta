require_relative 'carta'

puts "¿Cuantas cartas desea?"
numero_cartas = gets.chomp.to_i

#metodo de generar la cantidad de cartas
def cantidad_cartas(numero_cartas)

        array_cartas = []

        numero_cartas.times do |i|
        
            #selecciona un numero al azar 1 al 13
            numRandom = Random.new
            numero = numRandom.rand(1..13)

            #selecciona una pinta al azar
            pintaSample = ['C','D','E','T']
            pinta = pintaSample.sample
            
            #instancia la carta 
            c = Carta.new(numero, pinta)
            
            #la empujamos en el arreglo 
            array_cartas.push(c)
        end
    end
    array_cartas
end

#metodo de mostrar las cartas
def mostrar_array(cartas)
    cartas.each{|c| puts c}
end

cartas = cantidad_cartas(numero_cartas)
mostrar_array(cartas)