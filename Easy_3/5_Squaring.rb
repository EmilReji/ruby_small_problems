=begin
Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument 
(the square is the result of multiplying a number by itself).
=end

def multiply(one, two)
  return "Incorrect input type." if one.class.to_s != "Integer" || two.class.to_s != "Integer"
  one * two
end

def square(num)
  multiply(num, num)
end

p square(5) == 25
p square(-8) == 64