import golosinas.golosinas.*

object mariano {
	const property golosinas = [] // #{}
	
	method comprar(unaGolosina){
		golosinas.add(unaGolosina)
	}
	method desechar(unaGolosina){
		golosinas.remove(unaGolosina)
	}
	method cantidadDeGolosinas(){
		return golosinas.size()
	}
	method tieneLaGolosina(unaGolosina){
		return golosinas.contains(unaGolosina)
	}
	method probarGolosinas(){
		golosinas.forEach ({golosina => golosina.mordisco()})
	}
	method hayGolosinaSinTACC(){
		return golosinas.any({ golosina => golosina.libreGluten() })
	}
	method preciosCuidados(){
		return golosinas.all({golosina => golosina.precio()<=10})
	}
	
    method golosinaDeSabor(unSabor){
    	return golosinas.find({ golosina => golosina.gusto() == unSabor})	
    }

    method golosinasDeSabor(unSabor){
    	return golosinas.filter({ golosina => golosina.gusto() == unSabor})	
    }   
     
    method sabores(){
    	return golosinas.map({ golosina => golosina.gusto()}).asSet()	
    }

    method golosinaMasCara(){
    	return golosinas.max({ golosina => golosina.precio()})
    }
    
    method pesoGolosinas(){
    	return golosinas.sum({ golosina => golosina.peso()})
    }
    
    method golosinasFaltantes(golosinasDeseadas){
    	return golosinasDeseadas.filter({golosina => self.esGolosinaFaltante(golosina)})
    }
    
     method esGolosinaFaltante(golosina){
    	return not golosinas.contains(golosina)
    }
	
/*-----UNA ALTERNATIVA QUE ES UTIL SI NECESITAMOS HACER OPERACIONES DE CONJUNTOS--------
 
    	method golosinasFaltantes(golosinasDeseadas){
    	return golosinasDeseadas.asSet().difference(golosinas.asSet())
    }*/
	
	
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.filter({gusto => self.esGustoFaltante(gusto)}).asSet()
	}
	method esGustoFaltante(gusto){
		return not golosinas.any({golosina => golosina.gusto() == gusto})
	}
/*-------------------------ALTERNATIVA CON UN ALL----------------------------------------
 * 
	method esGustoFaltante(gusto){
		return golosinas.all({golosina => golosina.gusto() != gusto})
	}
	
	
------------------------ ALTERNATIVA CON DIFFERENCE--------------------------------------
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.asSet().difference(self.sabores())
	}*/
}

