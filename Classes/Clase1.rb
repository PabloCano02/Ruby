#Puts crea automaticamente un salto de linea, Print no pone salto de linea, muestra todo de corrido
puts "Hello, world!"
puts "Hola ITM"
puts "Hola SoftServe"
print "Hello, world!\t"
print "Hola ITM\t"
puts "Hola SoftServe"

#Para obtener información del usuario se utiliza gets
#Se le adiciona el método chomp para que no de un salto de linea al ingresar un dato
print "Ingrese su nombre: "
nombre = gets.chomp
puts "Hola, " + nombre + "!"

#La variable automaticamente lee como si fuera string, para convertir en entero toca adicionar
#el método .to_i, para convertir en flotante toca adicionar el método .to_f
#Para mostrar el resultado de un entero o flotante se debe convertir a string de alguno de los dos modos
puts "Calculadora"
print "Ingrese un número: "
num1 = gets.chomp.to_i
print "Ingrese otro número: "
num2 = gets.chomp.to_i
resultado = num1 + num2
puts "Resultado = " + resultado.to_s
puts "Resultado para #{nombre} = #{resultado}"

#Para convertir string a entero -> .to_i
#Para convertir string a flotante -> .to_f
#Para convertir entero o flotante a string -> -to_s

#Tipos de datos en Ruby: Numeros (enteros y flotantes), boleanos, strings, Hashes, Arrays y simbolos

#Para declarar variable se hace así, es algo dinámico, puede cambiar
#Para imprimir el nombre del tipo de la variable se utiliza el .class
my_var = 45
my_var = "Juan"
puts my_var.class
my_var.kind_of? String
#Para declarar una constante se hace en mayuscula sostenida, esta no se vuelve dinámica, es decir, no cambia
MYVAR = 35
