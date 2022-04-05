class Bootcamp
  
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new {|hash, k| hash[k] = []}
  end

  def name 
    @name
  end

  def slogan
    @slogan
  end

#   def student_capacity
#     @student_capacity
#   end

  def teachers
    @teachers 
  end

  def students
    @students 
  end

  def hire(str)
    @teachers << str
  end

  def enroll(str)
    @students << str if students.length < 6
    @students.include?(str)
  end

  def enrolled?(str)
    @students.include?(str)
  end

  def student_to_teacher_ratio
    @students.length / @teachers.length
  end

  def add_grade(str, num)
        if enrolled?(str)
            @grades[str] << num
            return true
        end
        false
  end 

  def num_grades(str)
    @grades[str].length
  end

  def average_grade(str)
    return nil if !enrolled?(str)
    if @grades[str].length != 0
    @grades[str].sum /  @grades[str].length
    else nil
    end
  end

end
