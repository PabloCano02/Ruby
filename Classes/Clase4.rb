#Manipulación de Strings

#En ruby, un string es una secuencia de caracteres alfanuméricos
#los strings son objetos de la clase String
#los strings no son inmutables, se pueden modificar, cambia el valor del objeto
#Metodos de los strings:

#Imprimir cadena de caracteres
#puts agrega salto de linea, print no lo hace
puts "Esta es mi primera cadena"
print "Esta es mi segunda cadena"
puts "Esta es mi tercera cadena"

#Uso de comillas dobles y comillas simples
#Secuencia de escape: Son caracteres especiales que se pueden utilizar dentro de una cadena de texto,
#produciendo un determinado en ella, por ejemplo: \n, \t
puts "Esta es mi \nprimera cadena"
puts 'Esta es mi \ntercera cadena'
puts "Esta es mi \"primera\" cadena"
#Strings con comillas dobles, se resuelven las secuencias de escape, se ejecutan. Mientras que para
#comilla simple imprime normal

#Concatenar strings
puts "Esta es mi primera cadena " + "Esta es mi segunda cadena"
puts 'Esta es mi primera cadena ' + 'Esta es mi segunda cadena'
puts "Esta es mi primera cadena " + 'Esta es mi segunda cadena'
puts 'Esta es mi primera cadena ' + "Esta es mi segunda cadena"
#Comparación con comilla simple y doble
puts 'Esta es mi primera cadena' == "Esta es mi primera cadena"
#Comparación con comilla simple y doble, además con secuencias de escape
puts 'Esta es mi \nprimera cadena' == "Esta es mi \nprimera cadena"
#Comparar elementos de un array y comparlo con un string
array = ["h","o","l","a"]
puts array == "hola"
#join: Junta los caracteres del array y los vuelve un string
array = ["h","o","l","a"]
puts array.join == "hola"

#Crear una cadena de string vacia
una_cadena = String.new
otra_cadena = "Esta es otra cadena de caracteres" #Utiliza duck typing
una_cadena = "Esta es una primera cadena. "
puts una_cadena + otra_cadena
#Si camina como un pato y habla como un pato, entonces tiene que ser un pato.

#Concatenación de strings
edad = 50
puts "Mi nombre es lucho y mi edad es " + edad.to_s #No se puede hacer directo, toca hacer conoversión
puts "Mi nombre es lucho y mi edad es #{edad}" #Interpolación de string

#Replicación de strings
team = "player" * 11
puts team

#Obtener tamaño de un string, se hace por dos metodos, size y length
puts team.size
puts team.length

#Obtener substrings
una_cadena = "Esta es una cadena de caracteres, no muy larga, no muy corta"
puts una_cadena[0,7]
puts una_cadena[5,12] #[Donde inicia, Cantidad de caracteres que aparecen luego de donde inicia]
puts una_cadena[12..19] #[va desde acá.. hasta acá incluyendolo]

#Como saber si un string contiene otro string
#Metodo include devuelve true or false
#En que indice de la cadena de caracteres se incluye el string
puts una_cadena.include?("mediana")
puts una_cadena.include?("larga")
puts una_cadena.index("larga") #Da el indice donde inicia la palabra
puts una_cadena.index("mediana")

#Poner en mayuscula todo el string
puts una_cadena.upcase
#Poner en minuscula todo el string
puts una_cadena.downcase

#Quitar espacios que hayan antes y/o despues de cadena de caracteres
una_cadena = "          Esta es una cadena de caracteres, no muy larga, no muy corta          "
puts una_cadena
puts una_cadena.rstrip #Remueve los espacios hacia la derecha de la cadena
puts una_cadena.lstrip #Remueve los espacios hacia la izquierda de la cadena
puts una_cadena.strip #Remueve los espacios antes y después de la cadena

#Metodo split:coge la cadena de caracteres, devuelve un array de string que es un pedazo de la cadena de
#caracteres inicial
#split sin argumentos, sobreentiende que el argumento es espacio
una_cadena = "Esta es una cadena de caracteres, no muy larga, no muy corta"
puts una_cadena.split #Eliminó los espacios
puts una_cadena.split(",") #Elimina los caracteres por los que hago la división
puts una_cadena.split.join #Split eliminó los espacios y lo volví un array
                           #join concatenó las posiciones del array

#Una cadena se puede revertir
una_cadena.reverse

#append: Similar a una concatenación (<<)
una_cadena + " Más bien mediana."
puts una_cadena #No imprimio lo que está después de una_cadena
una_cadena << " Más bien mediana."
puts una_cadena #Ya hizo la concatenación de un texto adicional a una variable


