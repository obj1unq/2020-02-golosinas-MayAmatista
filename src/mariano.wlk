
object mariano {
	const golosinas = []
	
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
    
}

