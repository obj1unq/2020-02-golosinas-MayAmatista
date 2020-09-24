object mariano {
	
	var golosinas = #{}


	method comprar(_golosina) {
		golosinas.add(_golosina)
	}
	
	method desechar (_golosina) {
		golosinas.remove(_golosina)
	}
	
	method baniar(_golosina) {
		var nuevaGolosina = new GolosinaBaniada(golosina=_golosina)
		golosinas.remove(_golosina) //si no está esta línea no tiene efecto alguno
		golosinas.add(nuevaGolosina)
	}
	
	
	method probarGolosinas() {
		golosinas.forEach( {_golosina => _golosina.mordisco() } )
	}
	
	method golosinas() {
		return golosinas
	}
	
	method hayGolosinaSinTACC() {
		return golosinas.any({ _golosina => _golosina.libreGluten()}) 
	}
	
	method preciosCuidados() {
		return golosinas.all({ _golosina => _golosina.precio() < 10}) 
	}
	
	method golosinaDeSabor(_sabor) {
		return  golosinas.find( { _golosina => _golosina.gusto() == _sabor} )
	}
	
	method golosinasDeSabor(_sabor) {
		return  golosinas.filter( { _golosina => _golosina.gusto() == _sabor} )
	}
	
	method sabores() {
		return  golosinas.map( { _golosina => _golosina.gusto() } ).asSet()
	}

	method golosinaMasCara() {
		return  golosinas.max( { _golosina => _golosina.precio() } )
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

class Chocolatin {
	var comido = 0
	var pesoInicial
		
	method precio() {
		return pesoInicial * 0.50
	}
	
	method peso() {
		return (pesoInicial - comido).max(0)
	}
	
	method mordisco() {
		comido += 2 
	}	
	method gusto() {
		return "chocolate"
	}
	
	method libreGluten() {
		return false
	}
}

object heladera {
	var property coeficiente = 0.5
}

class ChocolatinVip inherits Chocolatin {
	var contenedor = heladera
	
	override method peso() {
		return super() * (1 + self.humedad())
	}
	
	method humedad() {
		return contenedor.coeficiente()
	}
}
class ChocolatinPremium inherits ChocolatinVip {
	
	override method humedad() {
		return super() / 2
	}
}


class Bombon {
	var peso = 15
	
	method precio() {
		return 5
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		peso = peso * 0.8 - 1		
	}	
	method gusto() {
		return "frutilla"
	}
	
	method libreGluten() {
		return true
	}
}

class BombonDuro inherits Bombon {
	
	override method mordisco() {
		peso = peso * 0.9
	}
}


class Alfajor {
	var peso = 300
	
	method precio() {
		return 12
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		peso = peso * 0.8 
	}	
	method gusto() {
		return "chocolate"
	}
	
	method libreGluten() {
		return false
	}	
}

class Caramelo {
	var peso = 5
	var gusto = "frutilla"
	
	method precio() {
		return 1
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		peso -= 1 
	}	
	method gusto() {
		return gusto
	}
	
	method libreGluten() {
		return true
	}
}

class CarameloCorazonChocolate inherits Caramelo {
	
	override method mordisco() {
		super()
		gusto = "chocolate"	
	}
}

class Chupetin {
	var peso = 7
	
	method precio() {
		return 2
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		if(peso < 2) peso = peso * 0.9 
	}	
	method gusto() {
		return "naranja"
	}
	
	method libreGluten() {
		return true
	}	
}

class Oblea {
	var peso = 250
	
	method precio() {
		return 5
	}
	
	method peso() {
		return peso
	}
	
	method mordisco() {
		peso = peso * if (peso > 70) 0.5 else 0.75 
	}	
	method gusto() {
		return "vainilla"
	}
	
	method libreGluten() {
		return false
	}
}

class ObleaCrujiente inherits Oblea {
	
	var mordiscos = 0
	
	override method mordisco() {
		super()
		mordiscos += 1
		if(mordiscos <= 3) {
            peso -= 3			
		}
	} 
	
}

class GolosinaBaniada {
	var golosina
	var pesoBanio = 4
		
	method precio() {
		return golosina.precio() + 2;
	}
	
	method peso() {
		return golosina.peso() + pesoBanio;
	}
	
	method mordisco() {
		golosina.mordisco()
		pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() {
		return golosina.gusto()
	}
	
	method libreGluten() {
		return golosina.libreGluten()
	}	
}

class Tutifrutti {
	var libreDeGluten
	var gustos= ["frutilla", "chocolate","naranja"]
	var mordiscos = 0
	
	method libreGluten(valor) {
		libreDeGluten = valor
	}
	method precio() {
		return if(self.libreGluten()) 7 else 10;
	}
	
	method peso() {
		return 5;
	}
	
	method mordisco() {
		mordiscos = mordiscos + 1;
	}	
	method gusto() {
		return gustos.get(mordiscos % gustos.size())
	}
	
	method libreGluten() {
		return libreDeGluten
	}	
}

