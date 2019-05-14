class Triangle
  attr_reader :triangleside_1, :triangleside_2, :triangleside_3

    def initialize(triangleside_1, triangleside_2, triangleside_3)
      @triangleside_1 = triangleside_1
      @triangleside_2 = triangleside_2
      @triangleside_3 = triangleside_3

      if @triangleside_1 == 0 || @triangleside_2 == 0 || @triangleside_3 == 0
        raise TriangleError
      elsif @triangleside_1 < 0 || @triangleside_2 < 0 || @triangleside_3 < 0
        raise TriangleError
      elsif @triangleside_1 + @triangleside_2 <= @triangleside_3 || @triangleside_1 + @triangleside_3 <= @triangleside_2 || @triangleside_3 + @triangleside_2 <= @triangleside_1
        raise TriangleError
      elsif @triangleside_1 + @triangleside_2 < @triangleside_3 || @triangleside_2 + @triangleside_3 < @triangleside_1 || @triangleside_1 + @triangleside_3 < @triangleside_2
        raise TriangleError
    end

    def kind
      if @triangleside_1 == @triangleside_2 && @triangleside_2 == @triangleside_3
        :equilateral
      elsif @triangleside_1 == @triangleside_2 || @triangleside_2 == @triangleside_3 || @triangleside_1 == @triangleside_3
        :isosceles
      elsif @triangleside_1 != @triangleside_2 && @triangleside_2 != @triangleside_3
        :scalene
      end
    end
    end
  class TriangleError < StandardError
  end
end
