=begin
Create a method that takes two arguments, multiplies them together, and returns the result.
=end

def multiply(one, two)
  return "Incorrect input type." if one.class.to_s != "Integer" || two.class.to_s != "Integer"
  one * two
end


p multiply(5, 3)
p multiply("a", 3)
p multiply(0.34, 3)