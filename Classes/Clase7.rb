#Programación orientada a objetos (POO)

#Ruby es un lenguaje multiparadigma, está fuertemente orientado a la POO
#Ruby está basada en clases, normalmente cuando se crea el objeto este se basa en una clase ya existente
#Clase: Mecanismo para la reutilización de código. Plantillas a partir de la cual se crean objetos
#Objeto: Es una instancia de una clase
#Propiedad: Caracteristicas que comparten los objetos de una clase
#Atributo: Es cuando se implementa la clase, definir cuando es string, int, float. Está en función de las propiedades
#Operaciones: Comportamiento del objeto
#Metodos: Implementación en codigo de las operaciones
#Constructores: inicializar un objeto de una clase. En el constructor se asignan los valores iniciales del nuevo objeto.

#Pilares de la POO
#Polimorfismo: Capacidad de un objeto para responder de diferentes maneras a un mismo mensaje que recibe
#Abstracción: Es lo que se hace cuando se pasa algo del mundo real al mundo de la programación
#Herencia: Reutilización de codigo, relación unidireccional entre clases
#Encapsulación: Busca ocultar información de un objeto, generar restricciones de acceso, se utiliza el scope
#de las variables.

#Se tienen atributos y métodos de instancia y de clase
#Atributos de instancia, cada objeto creado va a poder tener diferentes valores en los atributos del constructor
#Atributos de clase, son atributos que comparten todos los objetos de dicha clase
#Atributos con @ on atributos de instancia, cuando son @@ son atributos de clase

class Television
  #Class attributes
  @@brand = "LG"
  @@min_channel = 0
  @@max_channel = 10000

  #Defined an accessor
  attr_accessor :volume

  #Initialize method (like a constructor)
  def initialize(channel, volume, power, bluetooth)
    @channel = channel
    @volume = volume
    @power = power
    @bluetooth = bluetooth
  end

  #Instance methods
  def turn_on()
    @power=true
  end

  def turn_off()
    @power=false
  end

  def shift_channel_up()
    if @power == true and @channel < @@max_channel
      @channel = @channel+1
    end
  end

  def shift_channel_down()
    if @power == true and @channel > @@min_channel
      @channel = @channel-1
    end
  end

  def change_channel(number)
    if @power == true and number >= @@min_channel and number <= @@max_channel
      @channel = number
    end
  end

  #to_s method (like any "to string" method)
  def to_s
    return "The TV is turned " + (@power ? "ON" : "OFF") + ", in the channel " + @channel.to_s + ", with a volume of " + @volume.to_s + " and with bluetooth in " + @bluetooth.to_s
  end

  #Class method
  def self.get_brand()
    @@brand
  end

  #Classical getter and setter
  def set_bluetooth(value)
    @bluetooth = value
  end

  def get_bluetooth()
    return @bluetooth
  end
end

my_tv = Television.new(3, 10, false, false)
puts my_tv
my_tv.turn_on
puts my_tv
my_tv.shift_channel_up
my_tv.shift_channel_up
my_tv.shift_channel_up
puts my_tv
my_tv.shift_channel_down
puts my_tv
my_tv.change_channel(20000)
puts my_tv
my_tv.change_channel(74)
puts my_tv
my_tv.volume = 25
puts "The new volume is " + my_tv.volume.to_s
puts my_tv
puts "The brand is " + Television.get_brand
puts my_tv
my_tv.set_bluetooth(true)
puts my_tv
