object feroz {
	var peso = 10 

	method estaSaludable() {
		return peso.between(20,150)
	}
	
	method aumentarPeso(cantidad) {
		peso += cantidad
	}
	
	method crisis() {
		peso = 10
	}
	
	method comer(comida) {
		peso += (comida.peso() * 0.1)
	}
	
	method correr() {
		peso = 0.max(peso - 1)
	}
	
	method soplar(casa) {
		peso = 0.max(peso - (casa.resistencia() + (chanchito.peso() * casa.cantidadDeChanchitos())))
	}
	
	method pesa() {
		return peso
	}
	
}

object abuelita {
	method peso() {
		return 50
	}
}

object caperucitaRoja {
		method peso() {
			return 60
		}	
		
		method cruzarElBosque() {
			canastaDeManzanas.perderManzana()
		}
 }

object canastaDeManzanas {
	var manzanas = 6
	var peso = 1.2
	
	method peso() {
		return peso
	}
	
	method perderManzana() {
		manzanas -= 1
		peso = peso - 0.2
	}
	
}

object cazador {
	method peso() {
		return 70
	}
	
	method vencerAFeroz() {
		feroz.crisis()
	} 
	
}

object casaDePaja {
	method resistencia() {
		return 0
	}
	
	method cantidadDeChanchitos() {
		return 2	}
}

object casaDeMadera {
	method resistencia() {
		return 5
	}
	
	method cantidadDeChanchitos() {
		return 0
	}
 }

object casaDeLadrillo {
	// tiene 5 ladrillos, como cada ladrillo equivale a 2 de resistencia; tiene 10 
	// de resistencia total
	
	method resistencia() {
		return 10
	}
	
	method cantidadDeChanchitos() {
		return 3
	}
}

object chanchito {
	method peso() {
		return 10
	}
}