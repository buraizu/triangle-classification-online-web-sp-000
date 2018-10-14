class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    is_valid = true

    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
      begin
        raise TriangleError
        puts error.message
        is_valid = false
      end
    end

    if is_valid == true && @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif is_valid == true && @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      :scalene
    elsif is_valid == true
      :isosceles
    end
  end

  class TriangleError < StandardError
    def message
      "The lengths entered are invalid to create a triangle."
    end
  end

end
