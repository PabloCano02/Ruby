#Methods, blocks, procs and lambdas

#Paradigma de programación: clasificación de los lenguajes de programación, es un enfoque o un camino que uno
#toma para resolver un problema programando.
#Programación procedural, imperativa, declarativa, estructurada, lógica, orientada a objetos, funcional
#Programación de proposito general es multiparadigma -> Por ejemplo Java, scala, ruby.

#Ruby es un lenguaje estructurado, se puede reusar codigo dentro de ese lenguaje utilizando métodos o
#funciones

#En Java hay distinción entre métodos y funciones -> función recibe o no parámetros y por lo general devuelve
#un valor. En ruby las funciones no existen, por lo general se habla de métodos.

#Ruby es orientado a objetos y también orientado a la programación funcional (uno crea funciones y esas
#funciones actuan sobre los objetos, las funciones son ciudadanos de primera clase, la función se le puede
#asignar a una variable y esa variable se le puede pasar como argumento a otra función). En ruby se tienen
#los siguientes elementos que ayudan a que la programación sea funcional, tales como: Métodos, bloques, procs
#y lambdas.

#Metodos
#def method_name [([param_name [= default_val]]...)]
#  expressions...
#  [return expression]
#end

#Metodo sin parámetros
def imprimir_mensaje
  puts "Esta es la primera linea del mensaje"
  puts "Esta es la segunda linea del mensaje"
end
imprimir_mensaje()

#Metodo con parámetros
def imprimir_mensaje(nombre, ciudad)
  puts "Buenos días " + nombre + ", Bienvenido a " + ciudad
end
puts "Ingrese su nombre: "
mi_nombre = gets.chomp
imprimir_mensaje(mi_nombre, "Medellín")

def imprimir_mensaje(nombre = "John Doe", ciudad = "miami")
  puts "Buenos días " + nombre + ", Bienvenido a " + ciudad
end
imprimir_mensaje()

def sumar(a=0, b=0)
  s = a + b
  return s
end
puts sumar(5, 10)

#Bloques
#Conjunto de una o más intrucciones de codigo
#Se cierran en llaves
#Por lo general tienen un nombre
#Se van a invocar en métodos que tengan el mismo nombre con una palabra clave yield

#block_name {
# one statement
# other statement
#}

def mi_bloque
  puts "primera línea del método"
  yield
  puts "última línea del método"
end

mi_bloque {
  puts "Primera línea del bloque"
  puts "Segunda línea del bloque"
  puts "Tercera línea del bloque"
}

BEGIN {
  puts "Primera línea del script"
  puts "Segunda línea del script"
}

END {
  puts "Penúltima línea del script"
  puts "última línea del script"
}

#Procs
#Es exclusivo de Ruby
#Es forma de encapsular un bloque en una variable
#Es una forma de hablar de programación funcional
#Comparándolos con lambdas, los procesos son más flexibles con sus parámetros y sus declaraciones de retorno
#se comportan de manera diferente

mi_variable = Proc.new {puts"Hola Proc"}
mi_variable.call()

mi_variable1 = Proc.new {|num| num*num*num}
puts mi_variable1.call(5)

mi_variable2 = Proc.new {|num1,num2| num1**num2}
puts mi_variable2.call(4,3)

#Lambdas
#Es un tipo especial de Proc, a diferencia de los Proc los lambdas si se ven en otros lenguajes de programación
#Los lambdas hacen que los métodos sean ciudadanos de primera clase
#Se llama también con el .call()

mi_lambda1 = -> (param1, param2) {param1 + param2}
mi_lambda2 = -> (param1, param2) {param1 * param2}

def aplicar_operacion(num1, num2, operacion)
  return operacion.call(num1, num2)
end

puts aplicar_operacion(5, 6, mi_lambda1)
puts aplicar_operacion(5, 6, mi_lambda2)
