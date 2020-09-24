## Parte 3: muchas golosinas

A partir de la solución desarrollada en las partes 1 y 2, hacer las modificaciones necesarias para que Mariano pueda comprar varios bombones, chocolatines, caramelos, alfajores, chupetines, obleas, golosinas bañadas y/o pastillas tuttifruti.

Resolver adecuadamente los casos en los que hay que pasar parámetros en la inicialización (el peso del chocolatín y la golosina a bañar).

<br>


### Bañar Golosina

Hacer que Mariano entienda el mensaje `baniar(unaGolosina)`. 
El método construye una nueva golosina bañada y la agrega a la colección de las golosinas que compró Mariano.

Pensar, haciendo un diagrama de objetos, qué pasa si:
1. la golosina ya era parte de la colección.
1. se baña una golosina ya bañada.

<br>

## Parte 4: más variantes de golosinas 

### Caramelos de distintos sabores
Hacer que pueda haber caramelos de frutilla, naranja, y chocolate. Cuando se construye el caramelo se le indica de que gusto es.


<!--- herencia de clase concreta con redefinicion --->

### Bombones duros
Los bombones duros son bombones (tienen las mismas reglas para el precio y gusto) pero cuando reciben un mordisco, en lugar de comportarse como el resto de los bombones, pierden el 10% de su peso

Indicar en cuál clase se encuentra el método que se ejecuta en cada caso, detallando el recorrido que realiza el method lookup.

```
var bombon = new Bombon() 
bombon.mordisco() 
bombon.peso() 
bombon = new BombonDuro() 
bombon.mordisco() 
bombon.peso() 
```

<!--- herencia con redefinicion y super para hacer otra cosa --->

### Caramelos con corazón de chocolate (Rellenos)
Los caramelos con corazón de chocolate son caramelos que al recibir un mordisco, además de comportarse como todos los caramelos cambian su sabor a chocolate

Indicar en cuál clase se encuentra el método que se ejecuta en cada caso, detallando el recorrido que realiza el method lookup.	

```
var caramelo = new Caramelo() 
caramelo.mordisco() 
caramelo.peso() 
caramelo.sabor() 
caramelo = new CarameloRelleno() 
caramelo.mordisco() 
caramelo.peso() 
caramelo.sabor()
```

<!--- herencia con redefinicion y super para modificar el resultado. Ademas tiene una variable en la subclase --->

### Obleas Crujientes
Las obleas crujientes son como todas las obleas y cuando reciben un mordisco 
pierden el peso que pierden todas las obleas (50% si el peso es mayor a 70g o 25% si es menor). Pero, en los primeros 3 mordiscos pierde 3 gramos adicionales.
 
Indicar en cuál clase se encuentra el método que se ejecuta en cada caso, detallando el recorrido que realiza el method lookup.

```
var oblea = new Oblea() 
oblea.mordisco() 
oblea.peso() 
oblea = new ObleaCrujiente() 
oblea.mordisco() 
oblea.peso() 
```

### Chocolatines VIP y  Chocolatines Premium
Los chocolatines VIP, son como todos los chocolatines, pero se guardan en una heladera que aporta un coeficiente de humedad (un número entre 0 y 1). Este coeficiente está involucrado para el cálculo del peso: El peso de un chocolatin VIP es el peso que tendría un Chocolatín cualquiera: 
`(pesoInicial - gramosConsumidos)` multiplicado por  `1 + humedad`. 

Los chocolatines Premium son un tipo especial de chocolatines VIP que vienen con una cobertura especial que los hace más resistentes a la humedad. Por lo tanto, La humedad en estos chocolatines es la mitad de la humedad de los chocolatines VIP.

Indicar en cuál clase se encuentra el método que se ejecuta en cada caso, detallando el recorrido que realiza el method lookup.

```
var chocolatin = new Chocolatin() 
chocolatin.peso() 
chocolatin = new ChocolatinVIP() 
chocolatin.peso() 
chocolatin = new ChocolatinPremium() 
chocolatin.peso() 
```