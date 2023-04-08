class Student
  attr_reader :notes, :name
  AVERAGE = 10

  def initialize(name)
    @name = name
    @notes = []
  end

  def addNote(note)
    #! Raise error
    raise NoteError if !note.respond_to?(:to_i)
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

#! CREATE ERRORS
# GOOD PRACTICE to capture all errors
class Error < RuntimeError
end

# Create custom type error
class NoteError < Error
  # define the message
  def initialize(msg = "Error: Cannot add note!")
    super
  end
end

begin
  student_2.addNote([1, 2, 25])
  # student_2.addNote()
  # rescue Exception => capture all exceptions
rescue NoteError => error # => capture exception with given name
  puts error.to_s
ensure
  puts "End of raised exception"
end
