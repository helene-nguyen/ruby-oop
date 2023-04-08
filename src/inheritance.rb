# Parent
class Vehicle
  attr_writer :wheels_nb
  attr_reader :wheels_nb, :name, :notes

  def initialize(name)
    @name = name
    @wheels_nb = wheels_nb
    @notes = []
  end

  def color(color)
    @color = color
  end

  def addNote(note)
    @notes << note
  end
end

# Children
class Car < Vehicle
  def getColor(color)
    puts "The color is: #{color(color)}"
  end

  def addNote(note)
    # reuse parent note and change property
    super(note + 2)
  end

  # you can also change method puts
  def puts(string)
    super string.upcase
  end
end

car = Car.new("Peugeot")

car.wheels_nb = 4

puts "The car #{car.name} has #{car.wheels_nb} wheels."

car.getColor("yellow")
car.addNote(2)
car.addNote(4)
car.addNote(9)
puts car.notes.inspect
