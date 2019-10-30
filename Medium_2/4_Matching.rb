=begin
Write a method that takes a string as argument, and returns true 
if all parentheses in the string are properly balanced, false otherwise. 
To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

Algorithm
Create variable representing num left parentheses
Iterate over str converted into array of chars
If current char is (, increment num by 1
If current char is ), decrement num by 1
Return false if num is negative at any point
At end, in num != 0 ,return false
If num == 0, then return true

=end

LEFT = ["(", "[", "{"]
RIGHT = [")", "]", "}"]
#in progress
def balanced_expanded?(str)
  Array.new(LEFT.length)
  count = 0
  str.chars.each do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    return false if count < 0
  end
  return false if count != 0
  true
end

def balanced?(str)
  count = 0
  str.chars.each do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    return false if count < 0
  end
  return false if count != 0
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false