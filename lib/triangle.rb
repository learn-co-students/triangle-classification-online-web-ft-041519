class Triangle
  
  attr_accessor :sides
  
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end
  
  def kind
    if @sides.max - @sides.min >= @sides.sort[1] || @sides.min <= 0 
      raise TriangleError
    elsif @sides.uniq.size == 1
      :equilateral
    elsif @sides.uniq.size == 2
      :isosceles
    elsif @sides.uniq.size == 3
      :scalene
    end
  end
  
  class TriangleError < StandardError
    puts "You must give valid triangle side lengths!"    
  end
  
end
