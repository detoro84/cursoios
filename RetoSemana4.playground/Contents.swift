//Carlos López, Reto Semana 4

import UIKit


enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
    func descripcion () -> String {
        switch self {
        case .Apagado:
            return "Apagado"
        case .VelocidadBaja:
            return "Velocidad baja"
        case .VelocidadMedia:
            return "Velocidad media"
        case .VelocidadAlta:
            return "Velocidad alta"
        }
    }
}

class Auto {
    var velocidad: Velocidades;
    
    init(){
        self.velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena: String){
        if (self.velocidad == Velocidades.Apagado){
            self.velocidad = Velocidades.VelocidadBaja
        }else if (self.velocidad == Velocidades.VelocidadBaja){
            self.velocidad = Velocidades.VelocidadMedia
        }else if (self.velocidad == Velocidades.VelocidadMedia){
            self.velocidad = Velocidades.VelocidadAlta
        }else if (self.velocidad == Velocidades.VelocidadAlta){
            self.velocidad = Velocidades.VelocidadMedia
        }
        
        return (self.velocidad.rawValue, self.velocidad.descripcion())
    }
}

var auto = Auto();

for i in 1...20 {
    print("\(auto.velocidad.rawValue)" + ", " +  (auto.velocidad.descripcion()))
    auto.cambioDeVelocidad()
}

// Ejecución del reto

auto.velocidad
auto.cambioDeVelocidad()
