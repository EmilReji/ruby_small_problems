=begin
Write a method that takes a string argument, and returns true if all of the alphabetic 
characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.
=end

def uppercase2?(str)
  only_alpha = str.chars.select { |char| ('A'..'Z').include?(char) || ('a'..'z').include?(char) }
  only_alpha.all? { |char| ('A'..'Z').include?(char) }
end

# further exploration
# if it has no uppercase characters, return false
def uppercase?(str)
  only_alpha = str.chars.select { |char| ('A'..'Z').include?(char) || ('a'..'z').include?(char) }
  return false if !only_alpha.any? { |char| ('A'..'Z').include?(char) }
  only_alpha.all? { |char| ('A'..'Z').include?(char) }
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
# p uppercase?('') == true
p uppercase?('') == false