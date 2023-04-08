class Student
  attr_reader :notes, :name
  AVERAGE = 10

  def initialize(name)
    @name = name
    @notes = []
  end

  def addNote(note)
    @notes << note.to_i
  end

  def average
    @notes.sum / @notes.length
  end

  def hasAverage?
    average >= AVERAGE
  end

  def >(student)
    average > student.average
  end
end

student_1 = Student.new("Frodo")
student_2 = Student.new("Sam")

student_1.addNote(1)
student_1.addNote(10)
student_1.addNote(12)
student_1.addNote(7)

puts student_1.notes.inspect

student_1.average

puts "Has over the average ? #{student_1.hasAverage?}"
puts "Average of student_1 #{student_1.name}: #{student_1.average}"

student_2.addNote(16)
student_2.addNote(17)
student_2.addNote(12)
student_2.addNote(19)

# create a comparison method
puts student_1 > student_2