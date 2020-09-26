object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return frutilla.gusto() }
	method libreGluten() { return true }
}


object alfajor{
	var peso = 300
	
	method precio() { return 12}
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 }
	method gusto() { return chocolate.gusto() }
	method libreGluten() { return false }
}


object caramelo{
	var peso = 5
	
	method precio() { return 1}
	method peso() { return peso }
	method mordisco() { peso = peso - 1 }
	method gusto() { return frutilla.gusto() }
	method libreGluten() { return true }
}

object chupetin{
	var peso = 7
	method precio() { return 2 }
	method peso() { return peso }
	method mordisco() {
		if (self.pesaMenosDeDos()){peso=self.peso()}
			else peso = peso *  0.1
		
	}
	method gusto() { return naranja.gusto() }
	method libreGluten() { return true }
	method pesaMenosDeDos(){
		return self.peso() < 2
	}
}

object oblea{
	var peso = 250
	
	method precio() { return 1}
	method peso() { return peso }
	method mordisco(){ 
		if (self.pesaMasDe70())
		peso -= peso * 0.5
		else peso -= peso * 0.25
	}
	method gusto() { return vainilla.gusto() }
	method libreGluten() { return false }
	
	method pesaMasDe70(){
		return self.peso() > 70
	}
}

object chocolatin{
	var peso = pesoInicial
	const pesoInicial = 0
	
	method precio(){
		return pesoInicial * 0.5
	}
	method peso() {return peso}
	method libreGluten() { return false }
	method mordisco(){ peso -= 2 }
}
/* #### Golosina bañada
Se arma a partir de una _golosina de base_.
El peso inicial es el de la golosina de base más 4 gramos que es lo que pesa el bañado. El precio es el de la golosina de base más 2 pesos. El gusto es el de la golosina de base. 
De la misma manera, es libre de gluten si lo es su golosina base.
Con cada mordisco se da un mordisco a la golosina de base. Además, en el primer mordisco pierde 2 gramos de
bañado, y en el segundo los otros dos.*/




/*#### Pastilla tutti-frutti
Pesa inicialmente 5 gramos. 
La pastilla puede ser libre de gluten o no (se configura). Si es libre de gluten el precio es $7; si no, es de $10.  
En cada mordisco cambia el sabor, pasa de frutilla a chocolate, de ahí a naranja, de ahí vuelve a frutilla. */

object pastillaTuttiFrutti {
	const peso = 5
	var sabor = "frutilla"
	var property libreGluten = false
	
	method precio() = return if (self.libreGluten()) {10}
	 else {7}
	method peso() {return peso}
	method gusto() {return sabor}
	
	method mordisco(){
		if (self.gusto() == "frutilla"){
			sabor = "chocolate"}
			else if (self.gusto()== "chocolate"){
				sabor = "naranja"}
				else if (self.gusto() == "naranja"){
					sabor = "frutilla"
				}
			}
}

/*object pastillaTuttiFrutti { //VERSION VERY DIFFICULT PERO SUPER PRO
	const peso = 5
	var sabor = frutilla
	var property libreGluten = false

	method precio() = return if (libreGluten) 10 else 7
	method peso() {return peso}
	method gusto() {return sabor.gusto()}
	method mordisco(){
		sabor = sabor.proximoGusto()
	}
	
}*/

object frutilla {
	method gusto() {return "frutilla"}
	method proximoGusto() {return chocolate}
}
object chocolate {
	method gusto() {return "chocolate"}
	method proximoGusto() {return naranja}
}
object naranja{
	method gusto() {return "naranja"}
	method proximoGusto() {return frutilla}
}
object vainilla{
	method gusto() {return "vainilla"}
}
