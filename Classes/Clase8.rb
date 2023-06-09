#Inheritance, Modules and Mixins

#Mecanismos para reutilizar código

#Requerir archivos
#require_relative: importar archivos utilizando su ruta relativa.
#require: importa archivos utilizando su ruta absoluta.
#Ruta absoluta: Es la ruta que me da la ubicación exacta del archivo en el sistema de archivos del equipo.
#Ruta relativa: Es la ruta del archivo con respecto al archivo desde el cual estoy tratando de acceder
#.: es el directorio actual, es mejor utilizar la ruta relativa.

require_relative "Clase8-1.rb"
require "./Clase8-1.rb"

#Modulos
#Es una forma de agrupar clases, metodos y constantes
#Se utilizan para crear librerias, toolboxes y cosas por el mismo estilo
#Un modulo no tiene instancias o subclases
#Un módulo define, automáticamente, un espacio de nombres, lo que evita conflictos de nombres.
#Se pueden incluir modulos dentro de las clases
#Para llamar a un metodo que está dentro de un modulo, al método se le debe anteponer self. para poder que
#cumpla con esa función

def print_message()
  puts "Este es mi nuevo mensaje"
end

include Mensaje

Mensaje.print_message()
print_message()

#Herencia
#Ruby soporta herencia
#Se tiene herencia simple, esto quiere decir que una clase solamente puede tener una superclase o clase padre
#La herencia consiste en la posibilidad de que una clase herede el comportamiento y las caracteristicas de
#otra clase que será la clase padre
#Se puede sobreescribir metodos de una superclase en una subclase (similar al polimorfismo)
#La herencia se utiliza con este simbolo "<"

class Correcaminos < Bird
  def run
    puts "Estoy corriendo"
  end
end

class Chicken < Bird
  include Feather
  include Paws

  def scream #Hace sobreescritura
    puts "pio"
  end
end

my_bird = Bird.new()
my_bird.scream()
my_correcaminos = Correcaminos.new()
my_correcaminos.run()
my_correcaminos.scream()
my_chicken = Chicken.new()
my_chicken.scream()

#Mixins
#Cuando se crea una clase , solamente se puede heredar de otra clase (herencia simple), pero dentro de esa
#clase se puede incluir varios modulos

my_chicken.change()
my_chicken.move()
