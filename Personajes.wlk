object jugadora{ 
  method personaje() = true
}

object guerrero {
  method personaje() = true
}

object trabajador {
  method personaje() = true
}

object ballesta {
  method arma() = true
}

object  jabalina {
  method arma() = true
}


object luisa {
  method personaje() = jugadora
}

object floki  {
  var arma= ballesta
  method personaje() = guerrero
  method arma()= arma
  method arma(unArma) {arma= unArma}
}
object mario{
  method personaje () = trabajador
}

object castillo{
  method altura() = 20
  method elemento() = true

}

object aurora{
  method elemento()= true
  method altura() = 1
}

object tipa {
  var altura = 8
  method altura() =altura
  method altura(unaAltura) {altura = unaAltura}
  method elemento() = true
}

