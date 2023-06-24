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
      is the student underage?: #{underage()},
      and is the student older than 27?: #{older_than_27()}"
  end
end
