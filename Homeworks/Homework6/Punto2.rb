#How can I do to set the initialize method, so it works receiving optional arguments?

=begin
  Para configurar el método initialize para que acepte argumentos opcionales, se puede utilizar valores de
  parámetros predeterminados. Por ejemplo
=end

class Person
  attr_reader :name, :age

  def initialize(name, age = nil)
    @name = name
    @age = age
  end
end

=begin
  El método initialize está configurado para aceptar dos argumentos: name y age. Sin embargo, el argumento
  age se le asigna un valor predeterminado de nil. Esto significa que si no se proporciona un argumento age
  al crear un nuevo objeto Person, se establecerá en nil de forma predeterminada.

  Se Puede crear un objeto Person con o sin especificar el argumento age, por ejemplo:
=end

person1 = Person.new("John", 30)
puts person1.name  # Output: John
puts person1.age   # Output: 30

person2 = Person.new("Alice")
puts person2.name  # Output: Alice
puts person2.age   # Output: nil

=begin
  En el ejemplo 1, se crea person1 con los argumentos name y age proporcionados. En el ejemplo 2, se crea
  person2 sin especificar el argumento age, por lo que toma el valor predeterminado de nil.

  Al utilizar valores de parámetros predeterminados en el método initialize, se puede hacer que ciertos
  argumentos sean opcionales al crear objetos de una clase.
=end
