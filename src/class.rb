class Person
  attr_accessor :eyeColor #dynamic getter - setter
  attr_reader :petsName #dynamic getter // cannot modified
  attr_writer :petsName #dynamic setter // accessible

  #~ constructor
  def initialize(name, height)
    @name = name
    @height = height
  end

  #~ method
  def sayHi
    puts "Hello! My name is #{@name} !"

    if isTall?
      puts "And I'm tall !"
    end
  end

  def isTall?
    @height > 180
  end

  # Getter and setter 3 methods
  def age(age) # setter
    @age = age.to_i
  end

  def getAge # getter
    puts "The age is #{@age}."
  end

  def hairColor=(color) # setter
    @hairColor = color
  end

  def getHairColor # getter
    puts "The hair color is #{@hairColor}!"
  end

  def callPrivateDemo
    demoPrivate
  end

  # private method
  private

  def demoPrivate
    puts "This is a private demo, cannot create with an instance but called by a 'public' method."
  end
end

first_person = Person.new("Bilbo", 120)
# first_person.sayHi
# puts first_person.isTall?

second_person = Person.new("Mon chéri", 190)

second_person.sayHi
second_person.age(33)
second_person.getAge
second_person.hairColor = "brown"
second_person.getHairColor
second_person.eyeColor = "green"
puts "The eye color is #{second_person.eyeColor}"

# second_person.demoPrivate # => error expected

second_person.callPrivateDemo # => call private method from a public method
