#What cases do you think hashes are more suitable than arrays for?

=begin
  Los hashes son más adecuados que los arrays cuando:

    -Las claves son identificadores únicos: Los hashes están diseñados para almacenar pares clave-valor,
    donde las claves actúan como identificadores únicos para los valores. Esto hace que los hashes sean
    ideales para escenarios donde la unicidad es un requisito, como las búsquedas en registros de bases
    de datos.

    -Se necesita acceder a los datos utilizando claves: Los hashes permiten acceder rápidamente a un valor
    por su clave asociada. Esto es útil cuando se necesitan realizar búsquedas basadas en claves específicas
    o realizar búsquedas sin tener que iterar a través de toda la colección.

    -Se necesita almacenar datos complejos: Los hashes pueden almacenar tipos de datos más complejos, como
    objetos o estructuras de datos anidadas, mientras que los arrays son más adecuados para almacenar datos
    simples y homogéneos.

    -El uso de memoria no es una preocupación: Los hashes requieren más memoria para almacenar que los arrays
    debido a la necesidad de almacenar tanto claves como valores. Esto puede no ser una preocupación para
    conjuntos de datos más pequeños, pero puede convertirse en una preocupación para conjuntos de datos más
    grandes donde el uso de memoria es un problema.

    -Flexibilidad: Los hashes son más flexibles que los arrays porque pueden acomodar cualquier tipo de datos
    como clave o valor. Además, el tamaño de un hash puede cambiar dinámicamente a medida que se agregan o
    eliminan pares clave-valor.
end

