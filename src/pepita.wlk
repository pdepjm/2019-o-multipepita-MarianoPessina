object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method volar(kms) {
		energia -= 10 + kms
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method estaFeliz() {
		return energia.between(500, 1000)
	}
	method cuantoQuiereVolar(){
	var distancia = energia/5
		if (energia.between(300, 400)){
			distancia += 10
		}
		if (energia % 20 == 0){
			distancia +=15
		}
		
		return distancia
	}
	method salirAComer(){
		self.volar(5)
		self.comer(alpiste)
		self.volar(5)
	}
	
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var estado = 0
	// 1 es mojado, 0 es seco
	method mojarse(){
		estado = 1
	}
	method secarse(){
		estado = 0
	}
	method energiaQueOtorga(){
		if (estado == 1){
		return 15
		}
		else{
		return 20
		}
	}
}

