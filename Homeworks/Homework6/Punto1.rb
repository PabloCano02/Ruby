#How do private, public and protected modifiers work in Ruby?

=begin
  Existen tres modificadores de visibilidad: private (privado), public (público) y protected (protegido),
  que controlan la accesibilidad de los métodos y atributos dentro de una clase. Estos modificadores
  determinan qué partes de una clase pueden ser accedidas desde fuera de la clase o dentro de sus subclases:

  Modificador Public:
  - Los métodos y atributos públicos pueden ser accedidos desde cualquier lugar, tanto dentro de la clase
  como fuera de ella.
  - Por defecto, todos los métodos y atributos son públicos a menos que se especifique lo contrario
  explícitamente.

  Modificador Private:
  - Los métodos y atributos privados solo pueden ser accedidos desde dentro de la clase donde se definen.
  - Los métodos privados no pueden ser llamados con un receptor explícito, incluso dentro de la clase.
  - Para definir un método o atributo privado, se utiliza la palabra clave "private".

  Modificador Protected:
  - Los métodos y atributos protegidos pueden ser accedidos dentro de la clase que los define y sus subclases.
  - Los métodos protegidos pueden ser llamados con un receptor explícito siempre que el receptor sea "self"
  o un objeto de la misma clase.
  - Para definir un método o atributo protegido, se utiliza la palabra clave "protected".

  Es importante tener en cuenta que los modificadores de visibilidad se aplican a nivel de instancia.
  Esto significa que, al crear un objeto de una clase, solo se pueden acceder a los métodos y atributos
  públicos de ese objeto. Los métodos privados y protegidos suelen utilizarse para detalles de implementación
  internos, mientras que los métodos públicos proporcionan la interfaz para interactuar con objetos de la
  clase.
=end

class Person

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def public_method
    puts "This is a public method."
    private_method
    protected_method
  end

  private

  def private_method
    puts "This is a private method."
  end

  protected

  def protected_method
    puts "This is a protected method."
  end
end

class Student < Person
  def access_protected_method
    puts "#{name} is accessing a protected method from the subclass."
    protected_method
  end
end

person = Person.new("John")
person.public_method
# Output:
# This is a public method.
# This is a private method.
# This is a protected method.

student = Student.new("Alice")
student.access_protected_method
# Output:
# Alice is accessing a protected method from the subclass.
# This is a protected method.

person.private_method
# Output:
# NoMethodError: private method `private_method' called for #<Person:0x00007ff1e782c5b0>

person.protected_method
# Output:
# NoMethodError: protected method `protected_method' called for #<Person:0x00007ff1e782c5b0>
