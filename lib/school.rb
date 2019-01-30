class School
  attr_accessor :roster
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, name_arr|
      sorted[grade] = name_arr.sort
    end
    return sorted
  end
end
