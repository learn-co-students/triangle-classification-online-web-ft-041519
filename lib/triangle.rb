require 'pry'

class Triangle
  
  attr_accessor :scalene, :equilateral, :isosceles, :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @holder = [@side1, @side2, @side3]
  end   
    
     
  def kind
    if (@holder.min<=0) 
        raise TriangleError
    elsif @holder.min + @holder.sort[1] <= @holder.max
        raise TriangleError
    end 
    
    if @holder.uniq.size == 1
      kind = :equilateral
    elsif @holder.uniq.size == 2
      kind = :isosceles
    elsif @holder.uniq.size == 3
      kind = :scalene
    end 
    
  end 
  
  class TriangleError < StandardError
    def message 
      "puts error here"
    end
  end 
  
end
