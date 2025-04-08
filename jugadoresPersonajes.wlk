import Personajes.*
import Elementos.*

object luisa {
    var personajeActivo= floki
    method personajeActivo() = personajeActivo
    method personaje(unPersonaje) {personajeActivo = unPersonaje}
    method aparece(elemento){
        personajeActivo.encontrar(elemento)
    }
}

object floki  {
  var arma= ballesta
  method personaje() = guerrero
  method arma()= arma
  method arma(unArma) {arma= unArma}
  method encontrar(elemento){
        elemento.recibirAtaque(arma.ataque())
        arma.usar()
    }
}

object mario {
    var elementosVisitados = []
    var defensa=0
    var valorRecolectado=0
    method defensa()= defensa
    method valor()= valorRecolectado
    method encontrar(elemento){       
        elementosVisitados.add(elemento)
        valorRecolectado = valorRecolectado + elemento.valor()
        elemento.recibirTrabajo()
    }
    method esFeliz(){
        return(valorRecolectado >=50 || not elementosVisitados.isEmpty() &&
        elementosVisitados.last().valor() > 20 )
    }
    
    method reset() {
        elementosVisitados = []
        valorRecolectado = 0
    }
}


