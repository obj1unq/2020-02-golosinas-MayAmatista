# Tests sobre las partes 1 y 2

## Tests de golosinas
Para cada golosina definida en la parte 1, salvo la golosina bañada (bombón, alfajor, caramelo, chupetín, oblea, chocolatín, pastilla tutti-frutti) definir un test en el que 
- se verifique que el peso inicial, el precio y el gusto sean los indicados en el enunciado; y que es, o no, libre de gluten, de acuerdo también a lo que se indica en el enunciado. 
Para el chocolatín hacer dos comprobaciones, una con 40 gramos de peso inicial y la otra con 100.
Para la pastilla tutti-frutti, hacer dos comprobaciones, una en la que es libre de gluten y la otra en que no.
- se le den dos mordiscos a la golosina, y se validen los cambios esperados en peso o sabor después de cada uno. Para chocolatín y pastilla tutti-frutti usar las dos variantes descriptas en el ítem anterior. Para la oblea, que sean tres mordiscos en lugar de dos.

Para la golosina bañada, hacer las mismas comprobaciones, para tres casos distintos: 
- bañando una pastilla tutti-frutti.
- bañando un chocolatín.
- bañando un chupetín.

<br> 

## Tests de Mariano
Armar un test en el que Mariano compre el chocolatin, el caramelo y el bombón. Probar cada método descripto en el enunciado. 
En particular, para `golosinasFaltantes` probar con `#{alfajor, bombon, chocolatin, chupetin}`, y para `gustosFaltantes`, con `#{"melón", "chocolate", "frutilla" , "vainilla"}`.
