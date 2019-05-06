class Triangle
  
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    tri_array = [side1, side2, side3]
    if tri_array.inject { |product, n| product * n} <= 0 || tri_array.inject { |sum, n| sum + n} <= (tri_array.max)*2
      raise TriangleError
    elsif tri_array.uniq.length == 1
      :equilateral
    elsif tri_array.uniq.length == 2 
      :isosceles
    elsif tri_array.uniq.length == 3 
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
