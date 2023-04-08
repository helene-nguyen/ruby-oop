#~ import modules
require "date"
require_relative "../module.rb"

module Geometry
  module Form
    class Circle
      def draw
        puts "drawing"
      end

      def giveDate
        puts Date.today
      end
    end

    def self.givePerimeter(radius)
        CirclePerimeter::perimeter(radius)
    end
  end
end

puts Geometry::Form::Circle.new.draw
puts Geometry::Form::Circle.new.giveDate
puts Geometry::Form.givePerimeter(5)
