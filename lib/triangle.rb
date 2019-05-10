class Triangle
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  class TriangleError < StandardError 
  end 
  
  def kind 
    if @side_1 <= 0 && @side_2 <= 0 && @side_3 <= 0
        raise TriangleError
      elsif @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
        raise TriangleError
      else 
    end 
    if @side_1 == @side_2 && @side_2 == @side_3
      :equilateral
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3
      :isosceles
    else
      :scalene
    end
    # if @side_1 == @side2 && @side_2 == @side_3
    #     :equilateral 
    # elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3 
    #     :isosceles 
    # else 
    #     :scalene
    # end  there was a strange bug with this code, even though it is identical to the one above. 
  end 
end 
