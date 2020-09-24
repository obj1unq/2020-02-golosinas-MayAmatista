## Parte 1: Golosinas
De cada **golosina** interesan: el _precio_, el _sabor_, su _peso_ en gramos y si _contiene gluten_. <br>
Además, cada vez que una golosina _recibe un mordisco_ se reduce la cantidad de gramos
que posee.


#### Bombón
Vale 5 pesos y pesa inicialmente 15 gramos. Su gusto es frutilla. Es libre
de gluten. <br> 
Cuando recibe un mordisco, pierde un 20 % de su peso + 1 gramo extra 
(debido a que parte del relleno cremoso se pierde al caer al suelo). 
O sea, su nuevo peso se calcula como `(peso * 0.8) - 1`. 

#### Alfajor 
Vale 12 pesos y pesa inicialmente 300 gramos. Su gusto es chocolate. No es libre de gluten.  
Cuando recibe un mordisco, pierde el 20 % de su peso (o sea, su nuevo peso se calcula como `peso * 0.8`).

#### Caramelo 
Vale 1 peso y pesa inicialmente 5 gramos. Su gusto es frutilla. Es libre de gluten.   
Cuando recibe un mordisco, pierde 1 gramo.

#### Chupetín 
Vale 2 pesos y pesa inicialmente 7 gramos. Su gusto es naranja. Es libre de gluten.  
Cuando recibe un mordisco, pierde el 10 % de su peso, a excepción de que su peso actual sea menor a 2 gramos: en tal caso, no pierde nada.

#### Oblea 
Vale 5 pesos y pesa inicialmente 250 gramos. Su gusto es vainilla. No es libre de gluten.  
Al recibir un mordisco pierde peso, en una cantidad que depende del peso actual: si es mayor a 70 gramos pierde el 50 % de su peso, en caso contrario, el 25 %.

#### Chocolatín
El peso inicial es desconocido, lo asigna el usuario. El precio es de $0,50 por cada gramo de peso inicial. No es libre de gluten. Obviamente, su gusto es chocolate.   
Pierde 2 gramos por mordisco.   
**¡Atención!** El precio es según el _peso inicial_, no debe cambiar con los mordiscos.

#### Golosina bañada
Se arma a partir de una _golosina de base_. <br>
El peso inicial es el de la golosina de base más 4 gramos que es lo que pesa el bañado. El precio es el de la golosina de base más 2 pesos. El gusto es el de la golosina de base. 
De la misma manera, es libre de gluten si lo es su golosina base.   
Con cada mordisco se da un mordisco a la golosina de base. Además, en el primer mordisco pierde 2 gramos de
bañado, y en el segundo los otros dos.

#### Pastilla tutti-frutti
Pesa inicialmente 5 gramos. 
La pastilla puede ser libre de gluten o no (se configura). Si es libre de gluten el precio es $7; si no, es de $10.  
En cada mordisco cambia el sabor, pasa de frutilla a chocolate, de ahí a naranja, de ahí vuelve a frutilla. 

<br> 

## Parte 2: Mariano

Crear el objeto `mariano` con la capacidad de comprar golosinas, hacer cosas con las golosinas que tiene, y responder a consultas sobre las mismas. En particular, debe entender todos los mensajes que siguen:
* `comprar(unaGolosina)` : agrega una golosina a la bolsa de golosinas compradas.
* `desechar(unaGolosina)` : desecha la golosina escogida de la bolsa de golosinas.
* `probarGolosinas()` : le da un mordisco a todas las golosinas dentro de la bolsa de golosinas compradas.
* `hayGolosinaSinTACC()` : indica si hay al menos una golosina sin gluten en la bolsa de golosinas compradas.
* `preciosCuidados()` : indica si todas las golosinas compradas tienen un precio menor o igual a 10 pesos.
* `golosinaDeSabor(unSabor)` : devuelve _la primer golosina_ que encuentra en la bolsa del sabor escogido.
* `golosinasDeSabor(unSabor)` : devuelve _las golosinas_ que encuentre dentro de la bolsa del sabor escogido.
* `sabores()` : que devuelve los sabores de las golosinas de la bolsa, idealmente sin repetidos. <br> 
  P.ej. aunque Mariano tenga tres golosinas de sabor naranja, en lo que devuelve `sabores()` el naranja debería aparecer una sola vez. <br> Una forma de resolver esto es usando **conjuntos**; revolver en el apunte sobre colecciones y closures: [https://objetos1wollokunq.gitlab.io/material/guia-colecciones-basicas.pdf](https://objetos1wollokunq.gitlab.io/material/guia-colecciones-basicas.pdf).
* `golosinaMasCara()` : devuelve la golosina mas cara en la bolsa de golosinas compradas.
* `pesoGolosinas()` : devuelve el peso de la bolsa de golosinas compradas, o sea, la suma del peso de cada golosina. 

Además, se deben contemplar dos situaciones relacionadas con _Juliana_, la pareja actual de Mariano. 
* Juliana critica a Mariano, pero siempre que puede le quita alguna golosina si es de las que a ella le gusta, y se enoja por las que faltan. <br>
Lograr que a Mariano se le pueda preguntar `golosinasFaltantes(golosinasDeseadas)` , donde `golosinasDeseadas` es una colección de golosinas. Debe devolver las golosinas que están entre las `golosinasDeseadas`, y que Mariano **no** compró.
* A veces Juliana tiene antojos por gustos gustos especiales. <br> 
Lograr que a Mariano se le pueda preguntar `gustosFaltantes(gustosDeseados)`, que es una consulta similar a la anterior, pero donde `gustosDeseados`  es una colección de _gustos_. <br>
Debe devolver los gustos que están entre los `gustosDeseados`, y que no están cubiertos por ninguna golosina de las que tiene Mariano.


