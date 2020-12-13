require'pry'
class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3 
  end 

  def kind 
    if side_1 <= 0 && side_3 <= 0 && side_2 <= 0
        raise TriangleError
    elsif side_1+side_2 <= side_3 || side_1+side_3 <= side_2 || side_2 + side_3 <= side_1
      raise TriangleError
      # return "this doesnt work"
    elsif side_1 == side_2 && side_2 == side_3
      return :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      return :isosceles
    elsif side_1 != side_2 || side_2 != side_3 || side_1 != side_3
      return :scalene
    # if side_1 <= 0 && side_3 <= 0 && side_2 <= 0
    #   return "this doesnt work"
    end
  end 
 
  # binding.pry 

  class TriangleError < StandardError
  end




 
end
