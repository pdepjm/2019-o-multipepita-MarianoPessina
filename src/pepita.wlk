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
	method haceLoQueQuieras(){
		if (self.estaCansada()){
			self.comer(alpiste)
		}
		if (self.estaFeliz()){
			self.volar(8)
		}		
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
	var estado = seco // arranca seco, lo defino así porque quiero
	method mojarse(){
		estado = mojado
	}
	method secarse(){
		estado = seco
	}
	method energiaQueOtorga(){
		return estado.energiaPorEstado()
	}
}
object mojado{
	method energiaPorEstado(){
		return 15
	}
}
object seco{
	method energiaPorEstado(){
		return 20
	}	
}

object canelon{
	var estadoSalsa = sinSalsa
	var estadoQueso = sinQueso
	
	method ponerSalsa(){
		estadoSalsa = conSalsa
	}
	method ponerQueso(){
		estadoQueso = conQueso
	}
	method sacarSalsa(){
		estadoSalsa = sinSalsa
	}
	method sacarQueso(){
		estadoQueso = sinQueso
	}
	method energiaQueOtorga(){
		return 20 + estadoSalsa.energiaPorEstado() + estadoQueso.energiaPorEstado()
	}
	
}

object sinSalsa{
	method energiaPorEstado(){
		return 0
	}
}
object sinQueso{
	method energiaPorEstado(){
		return 0
	}
}
object conSalsa{
	method energiaPorEstado(){
		return 5
	}
}
object conQueso{
	method energiaPorEstado(){
		return 7
	}
}

object roque{
	method entrenar() {//preferiría que se llame entrenarAPepita
		pepita.volar(10)
		pepita.comer(alpiste)
		pepita.volar(5)
		pepita.haceLoQueQuieras()
	}
}

