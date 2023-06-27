#Exception Handling

#Responde a un evento que puede interrumpir la ejecucuión normal de una parte de programa
#Es un evento no deseado o no esperado que puede parar la ejecución normal de un programa de software
#La forma de solucionar es tomando acciones apropiadas

#Errores típicos de excepciones:
#Tratar de leer un archivo inexistente
#Tratar de dividir sobre cero
#Tratar de acceder en un elemento de un array por fuera de sus limites

#Sintaxis básica para manejo de excepciones en Ruby
begin
  # Ejecución normal del código
  rescue OneTypeOfException
  # Atrapa la excepción y luego ejecuta el fragmento de codigo ubicado en esta parte
  rescue AnotherTypeOfException
  # Atrapa la excepción, funciona similar al de arriba pero con otra excepción
  else
  # Atrapa la excepción que no están dentro de los rescue.
  ensure
  # Estas lineas se van a ejecutar ocurra o no una excepción
end
a = 0
begin
  puts "Hola a todos"
  puts "Estoy empezando a ejecutarme"
  raise IOError, "No se pudo leer el archivo"
  puts (8/a)
  puts "Una instrucción después de la división"
  puts "Otra instrucción después de la división"
rescue ZeroDivisionError => e
  puts "Se trató de dividir sobre cero: " + e.message
  a = 1
  retry
rescue IOError => e
  puts "Ocurrió un error de entrada y salida: " + e.message
rescue
  puts "Ocurrió otro tipo de error"
ensure
  puts "Me sigo ejecutando"
  puts "Terminé mi ejecución"
end

#Las excepciones tienen una jerarquia, la clase es exception y tiene subclases como lo son: fatal, NoMemoryError,
#SystemExit, SystemStackError, SignalException, ScriptError, StandardError
#Cuando se ejecuta rescue con el nombre de una excepción, ese recue va a atrapar objetos de dicha excepción
#y objetos de la subclase de dicha excepción
#Si solo se coloca raise, se está lanzando un RunTimeError automaticamente
#Si solo se coloca rescue, aparece por defecto un StandardError
