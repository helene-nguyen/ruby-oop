module Walk
  def walk
    puts "I walk !"
  end

  # display what's included in this module
  # capture which element included
  # allow include methods of module into class 
  def self.included(base)
    puts base

    def base.test
        puts "This is a test"
    end
  end
end

module Swim
  def swim(test)
    puts "I'm a #{test} and I swim!"
  end
end

class Human
  include Walk
end

class Cat
  include Walk
end

class Dolphin
  include Swim
end


puts Human.new.walk
puts Cat.new.walk
puts Dolphin.new.swim("dolphin")

# can call the method self included
Human.test
