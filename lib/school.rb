# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name,grade)
      roster[grade] = []
      roster[grade] << student_name
  end

  def grade
    roster.detect do |grade, names|
      if grade == level
        return names
      end
    end
  end

  def sort
    hash = {}
roster.each do |grade, names|
  hash[grade] = names.sort
end
hash
  end

end
