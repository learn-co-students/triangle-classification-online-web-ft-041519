require 'pry'

class Triangle
  # write code her
attr_accessor :side1, :side2, :side3, :equilateral, :isosceles, :scalene

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 <= 0 || side2 <= 0 || side3 <= 0 || side1 + side2 <= side3 || side2 + side3 <= side1 || side3 + side1 <= side2
      #begin
        raise TriangleError
      #rescue TriangleError => error
      #end
    elsif side1 == side2 && side2 == side3
      :equilateral
    elsif (side1 == side2 && side2 != side3) || (side2 == side3 && side3 != side1) || (side3 == side1 && side1 != side2)
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
  end

end
