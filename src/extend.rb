module A
  def demo(name)
    puts "Hello World, I'm #{name}!"
  end

  def self.extended(base)
    puts "#{base.to_s} extend of module A"
  end
end

class C

  # get all methods of module A, available
  extend A
end

C.demo("Bilbo")

new_c = C.new
# add this keyword to get the method of module A
new_c.extend(A)
new_c.demo("Coraline")

new_c2 = C.new
new_c2.demo("Harry") # => expected error
