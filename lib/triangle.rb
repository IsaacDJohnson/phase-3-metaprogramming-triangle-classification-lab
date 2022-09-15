class Triangle
  # write code here
  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    validate_triangle
    if z == y && y == x
      :equilateral
    elsif x == y || y == z || z == x
      :isosceles
    else
      :scalene
    end
  end

  def sides_greater_zero?
    x > 0 && y > 0 && z > 0
  end

  def triangle_inequality?
    x + y > z && x + z > y && y + z > x
  end

  def validate_triangle
    raise TriangleError unless sides_greater_zero? && triangle_inequality?
  end

  class TriangleError < StandardError
  end

end
