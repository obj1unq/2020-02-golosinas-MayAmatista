object mariano {
	
	var golosinas = #{}

	method comprar(_golosina) { golosinas.add(_golosina) }
	
	method desechar (_golosina) { golosinas.remove(_golosina) }
	
	method probarGolosinas() {
		golosinas.forEach( {_golosina => _golosina.mordisco() } )
	}
	
	method golosinas() { return golosinas }
	
	method hayGolosinaSinTACC() {
		return golosinas.any({ _golosina => _golosina.libreGluten()}) 
	}
	
	method preciosCuidados() {
		return golosinas.all({ _golosina => _golosina.precio() < 10}) 
	}
	
	
	
	method golosinaDeSabor(_sabor) {
		return golosinas.find({ golosina => golosina.gusto() == _sabor })
	}
	
	method golosinasDeSabor(_sabor) {
		return golosinas.filter({ golosina => golosina.gusto() == _sabor })
	}
	
	method sabores() {
		return golosinas.map({ golosina => golosina.gusto() }).asSet()
	}



	method golosinaMasCara() {
		return golosinas.max( { _golosina => _golosina.precio() } )
	}

	method golosinasFaltantes(golosinasDeseadas) {
		return golosinasDeseadas.difference(golosinas)	
	}


	method gustosFaltantes(_gustosDeseados) {
		return _gustosDeseados.filter({_gustosDeseado => ! self.tieneGolosinaDeSabor(_gustosDeseado)})	
	}
	
	method tieneGolosinaDeSabor(_gusto) {
		return golosinas.any({_golosina => _golosina.gusto() == _gusto})
	}
	
	
}

object chocolatin {
	var comido = 0
	var pesoInicial
	
	method pesoInicial(unPeso) { pesoInicial = unPeso }
	method precio() { return pesoInicial * 0.50 }
	method peso() { return (pesoInicial - comido).max(0) }
	method mordisco() { comido += 2 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 }	
	method gusto() { return "chocolate" }
	method libreGluten() { return false
	}	
}

object caramelo {
	var peso = 5
	
	method precio() { return 1 }
	method peso() { return peso }
	method mordisco() { peso -= 1 }	
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object chupetin {
	var peso = 7
	
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() { if (peso < 2) { peso = peso * 0.9 } }	
	method gusto() { return "naranja" }
	method libreGluten() { return true }	
}

object oblea {
	var peso = 250
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() {
		if (peso >= 70) {
			peso = peso * 0.5
		} else { 
			// forma 1 - pienso con cuánto me quedo
			peso = peso * 0.75
			// forma 2 - lo que tenía *menos* lo que pierdo
			peso = peso - (peso * 0.25)
		}
	}	
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
}



object golosinaBaniada {
	var golosina
	var pesoBanio = 4
	
	method golosina(unaGolosina) { golosina = unaGolosina }
	method precio() { return golosina.precio() + 2 }
	method peso() { return golosina.peso() + pesoBanio }
	method mordisco() {
		golosina.mordisco()
		pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosina.gusto() }
	method libreGluten() { return golosina.libreGluten() }	
}

object tutifrutti {
	var libreDeGluten
	// para solucion 1
	var gusto = "frutilla"
	// para soluciones 2 y 3
	var gustos = ["frutilla", "chocolate", "naranja"]
	var gustoActual = 0
	
	// solucion 1
	method mordisco1() { 
		if (gusto == "frutilla") {
			gusto = "chocolate"
		} else if (gusto == "chocolate") {
			gusto = "naranja"
		} else { // es "naranja"
			gusto = "frutilla"		
		}
	}	
	method gusto1() { return gusto }
	
	// solucion 2
	method mordisco2() { 
		gustoActual += 1
		if (gustoActual == 3) { gustoActual = 0 }
	}	
	method gusto2() { return gustos.get(gustoActual) }
	
	// solucion 3
	method mordisco3() { 
		gustoActual += 1
	}	
	method gusto3() { return gustos.get(gustoActual % 3) }	

	method libreGluten(valor) { libreDeGluten = valor }
	method precio() { return (if(self.libreGluten()) 7 else 10) }
	method peso() { return 5 }
	method libreGluten() { return libreDeGluten }	

}

















