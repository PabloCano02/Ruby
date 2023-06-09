=begin
  Create a Student class with the following components:
    Instance attributes: full name, address, phone, age
    A class attribute with the name of the university
    The initialize method
    Only reader accessors for all the attributes
    A method that returns true if the student is underage
    A method that returns true if the student’s age is more than 27
=end

class Student
  #Class atributes
  @@university_name = "Universidad de Antioquia"

  #Defined accessor
  attr_reader :full_name, :address, :phone, :age

  #Initialize method
  def initialize(full_name, address, phone, age)
    @full_name = full_name
    @address = address
    @phone = phone
    @age = age
  end

  def underage()
    return @age < 18
  end

  def older_than_27()
    return @age > 27
  end

  def to_s
    return "The full name of the student is: #{@full_name},
      the address is: #{@address},
      the phone is: #{@phone},
      the age is: #{@age},
      is the student underage?: #{underage},
      and is the student older than 27?: #{older_than_27}"
  end
end

my_student = Student.new("Juan Cano", "Cra 50 # 133 sur 80", "3004224861", 29)
puts my_student
