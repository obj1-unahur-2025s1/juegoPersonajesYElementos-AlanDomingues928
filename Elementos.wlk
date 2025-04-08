import Personajes.*

object castillo {
  var defensa = 150
  
  method altura() = 20
  
  method elemento() = true
  
  method defensa() = defensa
  
  method defensa(unaDefensa) {
    defensa = unaDefensa
  }

  method recibirAtaque(potencia){
    defensa -=potencia
    return{defensa - potencia}
  }
  method valor() = defensa / 5 
  method recibirTrabajo() {
    defensa = (defensa + 20).min(200)
  }
}

object tipa {
  var altura = 8
  method altura()= altura
  method altura(unaAltura) {altura = unaAltura}
  method elemento() = true
  method recibirAtaque(potencia){
    // no hace nada
  }
  method valor() = altura * 2
  method recibirTrabajo() {
    altura = altura + 1
  }
  
}

object aurora {
    var estado = "Esta viva"
    method altura()= 1
    method estado() = estado
    method estado(estadoAurora) {estado = estadoAurora}
    method elemento() = true
    method recibirAtaque(potencia){
      potencia >= 10
      estado = "Esta Muerta"
      return {true}
  }
  method valor() = 15
  method recibirTrabajo(){

  }
}

object ballesta {
  var cargada = 10
  const potencia = 4
  method arma() = true
  method cargada() = cargada
  method cargada(estaCargada) {cargada = estaCargada} 
  method estaCargada() = cargada > 0
  method usar() {
    cargada -= 1
  }
  method ataque() = potencia
}

object  jabalina {
  const potencia = 30
  var cargada = true
  method arma() = true
  method cargada()= cargada
  method cargada(estaCargada) {cargada = estaCargada} 
  method estaCargada() = cargada
  method usar() {
    cargada = false
  }
  method ataque() = potencia
}

