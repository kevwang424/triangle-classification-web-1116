require 'pry'


class TriangleError < StandardError
  def message
    "This triangle is not valid"
  end
end

class Triangle

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end


  def kind
    if a <= 0 || b <= 0 || c <= 0 || (a+b <= c) || (a+c <= b) || (b+c <= a)
      raise TriangleError
        # binding.pry
    elsif a == b && b == c && a == c
      return :equilateral
    elsif a == b || b == c || a == c
      return :isosceles
    elsif a != b && b != c && c != a
      :scalene
    end
  end


end



# Triangle.new(0,0,0).kind
# binding.pry
