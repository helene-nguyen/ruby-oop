class Person

    def initialize(name)
        @name = name
    end

    def self.sayHi(name)
        puts "Hello #{name}!"
    end

    def sayHi
        # call class method
        # self is like "this" in JS 
        self.class.sayHi(@name) # careful, instance variable
    end
end

person = Person.new("John")

person.sayHi