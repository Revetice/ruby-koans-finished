# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  lengths = [a, b, c]
  lengths.sort!
  
  raise TriangleError if lengths.first <= 0
  raise TriangleError if lengths[0] + lengths[1] <= lengths[2]

  # WRITE THIS CODE
  return :equilateral if (a==b) and (b==c)
  return :isosceles if (a==b) or (b==c) or (a==c)
  return :scalene

  # Other approaches:
  # http://stackoverflow.com/questions/4742692/a-more-elegant-solution-to-ruby-koans-triangle-rb
  #
  # #1:
  #
  # case [a,b,c].uniq.size
  # when 1 then :equilateral
  # when 2 then :isosceles
  # else        :scalene
  # end

  # #2:
  #
  # [:equilateral, :isosceles, :scalene].fetch([a,b,c].uniq.size - 1)

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
