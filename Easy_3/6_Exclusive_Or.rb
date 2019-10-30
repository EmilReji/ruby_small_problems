=begin
The || operator returns a truthy value if either or both of its operands are truthy, 
a falsey value if both operands are falsey. The && operator returns a truthy value 
if both of its operands are truthy, and a falsey value if either operand is falsey. 
This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a method named xor that takes two arguments, 
and returns true if exactly one of its arguments is truthy, false otherwise.
=end

def xor0?(one, two)
  return false if one && two # both true is handled here
  return false if !(one || two) # both false is handled here
  true
end

def xor1?(one, two)
  one != two 
end

def xor2?(one, two) # in case non-booleans must be handled
  !!one != !!two
end

def xor?(first, second)
  !(first && second) && (first || second)
end
## TT -> F && T -> false
## FF -> T && F -> false
## TF -> T && T -> true
## FT -> T && T -> true

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
