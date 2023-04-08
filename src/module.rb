#~ import module
require "date"

# import module relative to the path
require_relative "inheritance"
require_relative "./examples/example_4.rb"

module CirclePerimeter
  PI = 3.1415

  def self.perimeter(radius)
    2 * PI * radius
  end
end

# puts CirclePerimeter.perimeter(5)

# # Call the module property with namespace
# puts CirclePerimeter::PI

# puts Date.new
# puts Date.today
# puts Date.today.monday?

# car = Car.new("Tesla")
# student = Student.new("Gandalf")

# puts student.name


