require_relative "Student.rb"
require_relative "Course.rb"

class UndergraduateStudent < Student

  attr_reader :major, :gpa, :courses

  def initialize(full_name, address, phone, age, major, gpa)
    super(full_name, address, phone, age)
    @major = major
    @gpa = gpa
    @courses = []
  end

  def is_eligible_for_honors
    if @gpa >= 3.5
      puts "#{@full_name} is eligible for honors in #{@major}."
    else
      puts "#{@full_name} is not eligible for honors in #{@major}."
    end
  end

  def add_course(course)
    @courses << course
  end

  def remove_course(course)
    @courses.delete(course)
  end

  def to_s
    course_list = @courses.map(&:to_s).join("\n")
    return "#{super},
    major: #{@major},
    grade point average: #{@gpa},
    Courses:
    #{course_list.gsub("/n", "")}"
  end
end

my_student = Student.new("Juan Cano", "Cra 50 # 133 sur 80", "3004224861", 29)

undergraduate_student = UndergraduateStudent.new("Maria Perez", "Cra 60 # 100-20", "3001234567", 20, "Software Engineer", 4.0)
course1 = Course.new("Mathematics", "2023-1", "MJ 8:00 - 10:00")
course2 = Course.new("Physics", "2023-1", "WV 8:00 - 10:00")
course3 = Course.new("Programming Logic", "2023-1", "LWV 6:00 - 8:00")
undergraduate_student.add_course(course1)
undergraduate_student.add_course(course2)
puts undergraduate_student
undergraduate_student.is_eligible_for_honors

my_student = UndergraduateStudent.new("Juan Cano", "Cra 50 # 133 sur 80", "3004224861", 29, "Chemical Engineer", 3.4)
my_student.add_course(course1)
my_student.add_course(course2)
my_student.add_course(course3)
puts my_student
my_student.is_eligible_for_honors
