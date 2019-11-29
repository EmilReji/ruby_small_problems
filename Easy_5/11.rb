def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

a = "hello world"
p a.object_id
b = spin_me(a) # "olleh dlrow"
p b.object_id

=begin
The returned string will be a different object from the string that was passed in.
The String#split method will return a new array generated from the string.
The each method will return this original array. However since reverse! is a mutating
method, the underlying elements(words) in that original array will be mutated.
When String#join is run on that array, a new string is generated and returned.

=end
