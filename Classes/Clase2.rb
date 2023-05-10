#Arrays and Hashes

#Colecciones ordenadas de diferentes objetos, están indexados, se pueden obtener elementos mediante el indice
#Normalmente el indice del array comienza en cero, se puede contar indices de los arregos de atras hacia adelante
#Se hace con indices negativos
#Los arrays son dinámicos, a medida que ingreso datos al array, incrementa el tamaño
cadena = "Cadena de caracteres"
puts cadena
#Imprime el primer caracter del array
puts cadena[0]
#Imprime el tercer caracter del array
puts cadena[2]
#Imprime el segundo caracter del array de atrás hacia adelante
puts cadena[-2]
#Imprime la posición desde la cual se quiere arrancar hasta la posición a la que se quiere llegar sin incluir,
#se llama slicing
puts cadena[0,6]

#Funcionalidad de arrays -> Para métodos y funciones es mejor poner paréntesis
#Crear un array vacío
ciudades = Array.new()
#crear un array con n posiciones
ciudades = Array.new(4)
#Crear un array de n posiciones y que en todas diga lo mismo
ciudades = Array.new(4, "Medellín")
puts ciudades
#Elemento vacio en Ruby -> nil
#Crear un array con un conjunto inicial de elementos, pueden ser de diferente tipo
ciudades = ["Medellín", "Rionegro", "Jericó", "Marinilla", "Sopetrán"]
for ciudad in ciudades
  puts "Hoy voy a: " + ciudad
end
#Acceder a un elemento del array
puts ciudades[1]
puts ciudades[-4]
puts ciudades[0,3]
#[Obtiene el elemento n][Obtiene los elementos desde a hasta b sin incluirlo]
puts ciudades[0][0,5]

#Asignarle a un elemento de un arreglo existente otro elemento
ciudades = ["Medellín", "Rionegro", "Jericó", "Marinilla", "Sopetrán"]
puts ciudades[-4] = 89
puts ciudades[5] = "La ceja"
puts ciudades[7] = "Guarne"
puts ciudades[-2] = "El retiro"
puts ciudades[-1] = ["Guarne", "San Vicente"]
#Para imprimir San vicente
puts ciudades[-1][-1]

#Hashes
#Son colecciones de pares clave-valor, en un hash se va a tener un conjunto de elementos y cada elemento
#es una pareja, por ejemplo "Antioquia" => "Medellín". Donde un componente es la clave y el otro es el valor
#Para acceder al array se hace por su indice, al hash se accede por la clave
#Los hash en el elemento de la clave se ingresan números o caracteres
#Los hash no son ordenados, se acomodan arbitrariamente
#Es posible pedir un elemento a un hash mediante una clave y que la clave no exista, retorna un nulo (nil)

#Funcionalidad de los hashes
capitales = Hash.new()
#Un hash se crea con un conjunto de elementos iniciales
capitales = {"Florida" => "Miami", "Washington" => "Seatle", "Louisiana" => "New Orleans"}
#Conocer el tamaño del hash
puts capitales.size
#Mostrar valores del hash
puts capitales[0] #No muetra nada porque se debe colocar la clave
puts capitales["Washington"]
#Agregar otro elemento al hash
capitales["Oregon"] = "Portland"
puts capitales
#Cambiar un elemento del hash utilizando su clave
capitales["Louisiana"] = "Louisville"
puts capitales["Louisiana"]

precios = {"Papa" => 2000, "Huevo" => 700, "Queso" => 6000}
puts precios
puts precios["Papa"]
puts precios["Papa"] * 10
