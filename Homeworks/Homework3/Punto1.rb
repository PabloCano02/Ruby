#What cases do you think arrays are more suitable than hashes for?

=begin
  Los arrays son más adecuadas que los hashes cuando:

    -Se necesita mantener un orden: Los arrays mantienen el orden de los elementos y son los más adecuadas
    cuando el orden de los datos es importante. Los hashes, por otro lado, no mantienen ningún orden.

    -Se requiere acceso basado en índices: Los arrays son la mejor opción cuando se necesita acceder a los
    datos a través de un índice. En contraste, los hashes son más adecuados cuando se necesita acceder a los
    datos a través de una clave.

    -Se esperan valores duplicados: Los arrays pueden contener valores duplicados. En contraste, los hashes
    requieren claves únicas y los valores pueden ser sobrescritos si se asignan múltiples claves al mismo
    valor.

    -Se utilizan tipos de datos simples: Los arrays son más adecuadas para almacenar tipos de datos simples
    como números, cadenas y booleanos. Los hashes son más adecuados para almacenar tipos de datos complejos
    como objetos y arrays.

    -Se tiene en cuenta el uso de memoria: Los arrays usan menos memoria que los hashes porque no requieren
    claves para cada elemento. Esto puede hacer que los arrays sean una mejor opción para conjuntos de datos
    grandes donde el uso de memoria es una preocupación.
end
