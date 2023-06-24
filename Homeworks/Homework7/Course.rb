class Course

  attr_reader :name_course, :semester, :time

  def initialize(name_course, semester, time)
    @name_course = name_course
    @semester = semester
    @time = time
  end

  def to_s
    return "Nombre del curso: #{@name_course},
    semester: #{@semester},
    time: #{@time}/n"
  end
end
