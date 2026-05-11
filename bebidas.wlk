object whisky {
  method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida
}

object terere {
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida) = 0
}

object licuadoDeFrutas{


 const nutrientes= []

  method rendimientoQueOtorga(cantidad){
    return  (cantidad/1000) * nutrientes.sum()
  }

  method agregarNutrientes(unNutriente){
    nutrientes.add(unNutriente)
  }

}

object aguaSaborizada{
  var bebida= whisky

  method bebida(unaBebida){
    bebida=unaBebida
  }

  method rendimientoQueOtorga(cantidad){
    1 + bebida.rendimientoQueOtorga(cantidad/4)
  }
}

object coctel{

  var bebida= whisky

  method agregarBebida(unaBebida){
    bebida= unaBebida
  }
  
  method rendimientoQueOtorga(cantidad){
      bebida.map({bebida => bebida.rendimientoQueOtorga(cantidad/bebida.size())})
                .product()
  
  }
}

