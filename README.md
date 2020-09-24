Golosinas

A Mariano le gusta mucho las golosinas. Juliana opina que exagera en el consumo de
las mismas. Por eso Mariano decidió programar un modelo en objetos que le permitiera
analizar su conducta.
Parte 1: Golosinas
De cada golosina interesa el precio, el sabor, su peso en gramos y si contiene gluten.
Además, cada vez que una golosina recibe un mordisco se reduce la cantidad de gramos
que posee.

Bombón: Vale 5 pesos y pesa inicialmente 15 gramos. Su gusto es frutilla. Es libre
de gluten. Cuando recibe un mordisco, pierde un 20 % de su cantidad en gramos +
1 gramo extra (debido a que parte del relleno cremoso se pierde al caer al suelo).

Alfajor: Vale 12 pesos y pesa inicialmente 300 gramos. Su gusto es chocolate. No
es libre de gluten. Cuando recibe un mordisco, pierde el 20 % de su cantidad de
gramos.

Caramelo: Vale 1 peso y pesa inicialmente 5 gramos. Su gusto es frutilla. Es libre
de gluten. Cuando recibe un mordisco, pierde el 1 gramo.

Chupetín: Vale 2 pesos y pesa inicialmente 7 gramos. Su gusto es naranja. Es libre
de gluten. Cuando recibe un mordisco, pierde el 10 % de su peso. A excepción de
que su peso actual sea menor a 2 gramos. En ese caso, no pierde nada.

Oblea: Vale 5 pesos y pesa inicialmente 250 gramos. Su gusto es vainilla. No es
libre de gluten. Al recibir un mordisco pierde una cantidad de gramos dependiendo
de su peso actual. Si es mayor a 70 gramos pierde el 50 % de su peso, si no, el
25 %.

Chocolatín, el peso inicial es desconocido, lo asigna el usuario. El precio es de
$0,50 por cada gramo de peso inicial. Pierde 2 gramos por mordisco. No es libre
de gluten. ¡Ojo con esto! El precio es según el peso inicial, no debe cambiar con
los mordiscos.

Golosina bañada: Se arma a partir de una golosina de base. El peso inicial es el de
la golosina de base más 4 gramos que es lo que pesa el bañado. El precio es el de
la golosina de base más 2 pesos. El gusto es el de la golosina de base. De la misma
manera, es "libre de gluten"si lo es su golosina base. Con cada mordisco se da un
mordisco a la golosina de base. Además, en el primer mordisco pierde 2 gramos de
bañado, y en el segundo los otros dos.

Pastilla tutti-frutti. Pesa inicialmente 5 gramos. En cada mordisco cambia el sabor,
pasa de frutilla a chocolate, de ahí a naranja, de ahí vuelve a frutilla. La pastilla
puede ser libre de gluten o no (se configura). Si es libre de gluten el precio es $7
o $10 si no lo es.

Parte 2: Mariano
Crear el objeto mariano con la capacidad de comprar golosinas:
* Entender el mensaje comprar(unaGolosina) , que guarda una golosina en la bolsa
de golosinas compradas.
* Entender el mensaje desechar(unaGolosina) , que desecha la golosina escogida de
la bolsa de golosinas.
* Entender el mensaje probarGolosinas() , que le da un mordisco a todas las golosinas
dentro de la bolsa de golosinas compradas.
Entender el mensaje hayGolosinaSinTACC() , que indica si hay al menos una golosina
sin gluten en la bolsa de golosinas compradas.
* Entender el mensaje preciosCuidados() , que indica si todas las golosinas compradas
tienen un precio menor o igual a 10 pesos.
* Entender el mensaje golosinaDeSabor(unSabor) , que devuelve la primer golosina
que encuentra en la bolsa del sabor escogido.
* Entender el mensaje golosinasDeSabor(unSabor) , que devuelve las golosinas que
encuentre dentro de la bolsa del sabor escogido.
* Entender el mensaje sabores() , que devuelve los sabores de las golosinas de la
bolsa.
* Entender el mensaje golosinaMasCara() , que delvuelve la golosina mas cara en la
bolsa de golosinas compradas.
* Juliana critica a Mariano, pero siempre que puede le quita alguna golosina si
es de las que a ella le gusta, y se enoja por las que faltan. Crear el mensaje
golosinasFaltantes(golosinasDeseadas) , que devuelve las golosinas que Mariano
no compró y que a Juliana le gustan
* A veces juliana tiene antojos por gustos gustos especiales. Crear en mariano el mensaje
gustosFaltantes(gustosDeseados) , que devuelve los gustos que Luciana quiere 
pero que no está cubierto por ninguna golosina de las que tiene mariano.


