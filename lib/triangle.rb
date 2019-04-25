require 'pry'

class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3, :kind

  def initialize(*sides)
    @side_1 = sides[0]
    @side_2 = sides[1]
    @side_3 = sides[2]

    if sides.any? {|x| x == 0} || (sides.max - (sides.inject(0) {|sum, x| sum + x} - sides.max) >= 0)
      begin
        raise TriangleError
      end
    elsif (@side_1 == @side_2) && (@side_1 == @side_3) && (@side_2 == @side_3)
      @kind = :equilateral
    elsif (@side_1 != @side_2) && (@side_1 != @side_3) && (@side_2 != @side_3)
      @kind = :scalene
    else
      @kind = :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end

end
