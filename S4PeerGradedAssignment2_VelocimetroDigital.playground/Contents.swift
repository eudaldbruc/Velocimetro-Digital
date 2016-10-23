//: Semana 4 - Peer-Graded Assignment 2 Velocimetro Digital

// =========================== Playground ====================================
// Peer Grade Assignment 2 - Semana 4 - Un Velocímetro de un Automóvil Digital
// Por Eudald Bruc


// 1. Declaramos la enumeración 'Velocidades' y sus valores de tipo Int
// La enumeración 'Velocidades' cumple con la función inicializadora 'init' que asigna a
// 'self' la velocidadInicial:

enum Velocidades : Int {
    
    case Apagado = 0          // representa la velocidad 0.
    
    case VelocidadBaja = 20   // representa una velocidad baja de 20km por hora.
    
    case VelocidadMedia = 50  // representa una velocidad media  de 50km por hora
    
    case VelocidadAlta = 120  //  representa una velocidad alta de 50km por hora.

    init(velocidadInicial: Velocidades) {
        
        self = velocidadInicial
        
    }
    
}

// 2. Declaramos la clase 'Auto' con los siguientes atributos:
//    - Una variable que sea una instancia de la enumeración Velocidades, llamada: 'velocidad'.
//    - La función o método 'init'
//    - La función: 'func cambioDeVelocidad( ) -> (actual: Int, velocidadEnCadena: String)' y sus reglas de ejecución:


class Auto {
    
    var velocidad: Velocidades
    
    
    init(velocidadIniciacion: Velocidades) {
        
        self.velocidad = Velocidades.init(velocidadInicial: velocidadIniciacion)
    
    }
    
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena: String) {
        
        var actual: Int = 0
        var velocidadEnCadena: String = ""
        
        if self.velocidad.rawValue == 0 {
            self.velocidad = Velocidades.VelocidadBaja
            actual = 20
            velocidadEnCadena = "Velocidad baja"
        
        } else if self.velocidad.rawValue == 20 {
            self.velocidad = Velocidades.VelocidadMedia
            actual = 50
            velocidadEnCadena = "Velocidad media"

        
        } else if self.velocidad.rawValue == 50 {
            self.velocidad = Velocidades.VelocidadAlta
            actual = 120
            velocidadEnCadena = "Velocidad alta"

        
        } else if self.velocidad.rawValue == 120 {
            self.velocidad = Velocidades.VelocidadMedia
            actual = 50
            velocidadEnCadena = "Velocidad media"

        }
        
        let resultadoVelocidad = (actual, velocidadEnCadena)
        return resultadoVelocidad
        
    }
    
}
    
// 3. Pruebas de la Clase:
// Creo una instancia de la clase 'Auto' y la inicializo en '.Apagado' e imprimo la velocidad inicial en la consola

var auto = Auto.init(velocidadIniciacion: .Apagado)

print("\(auto.velocidad.rawValue), \(auto.velocidad)\n")


// Itero 20 veces usando un 'for', llamo a la función 'cambioDeVelocidad' e imprimo los valores de la velocidad en la consola.

for i in 1...20 {
    
    let resultadoFuncionCambioVelocidad = auto.cambioDeVelocidad()

    print("\(resultadoFuncionCambioVelocidad.0), \(resultadoFuncionCambioVelocidad.1)\n")

}

// NOTA: Véase el resultado en la consola.













































