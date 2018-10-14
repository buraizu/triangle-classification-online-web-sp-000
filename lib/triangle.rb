class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 || @side2 <=0 || @side3 <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
        return error.message
      end
    end
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    else
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "The lengths entered are invalid to create a triangle."
    end
  end

end
