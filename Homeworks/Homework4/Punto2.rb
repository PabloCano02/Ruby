=begin
  What are these iterators for? Write a simple example of each of them:
  a. Each iterator
  b. Times iterator
  c. Collect iterator
=end

=begin
  Un iterador es un objeto que permiten recorrer y operar elementos de una colección de datos, como un array,
  un hash, una lista o un diccionario.
=end

=begin
  a. Each iterator: permite recorrer los elementos de una colección uno por uno y aplicar una acción a cada
  elemento. Proporciona una forma elegante de iterar sobre una colección.
=end

numbers = [1, 2, 3, 4, 5]
numbers.each do |num|
  puts num
end

fruits = ["apple", "banana", "orange"]
fruits.each do |fruit|
  puts fruit
end

=begin
  En estos ejemplos, se utiliza el iterador each para recorrer los elementos del array numbers y fruits y, en
  cada iteración, se imprime el valor del elemento.
=end

=begin
  b. Times iterator: El iterador times permite ejecutar un bloque de código un número específico de veces. Es
  útil cuando se necesita repetir una acción una cantidad conocida de veces.
=end

5.times do
  puts "Hello, world!"
end

3.times do
  puts "My name is Pablo"
end

=begin
  En estos ejemplos, se utiliza el iterador times para imprimir el mensaje "Hello, world!" cinco veces y para
  imprimir el mensaje "My name is Pablo" tres veces.
=end

=begin
  C. Collect iterator: El iterador Collect (también conocido como map) permite transformar una colección
  aplicando una operación a cada uno de sus elementos y devuelve un nuevo array con los resultados.
=end

numbers = [1, 2, 3, 4, 5]
squared_numbers = numbers.collect do |num|
  num ** 2
end
puts squared_numbers.inspect

fruits = ["apple", "banana", "orange"]
uppercase_fruits = fruits.collect do |fruit|
  fruit.upcase
end
puts uppercase_fruits.inspect

=begin
  En estos ejemplos, se utiliza el iterador collect para elevar al cuadrado cada elemento del array numbers
  y para imprimir los nombres de las frutas en mayúscula. Los resultados se almacenan en dos nuevos arrays
  llamados squared_numbers y uppercase_fruits, y finalmente se imprimen.
=end

