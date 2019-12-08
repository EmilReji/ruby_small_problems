=begin
if 0 values, return empty array
if 1 value, return that one valu in array * 7
if more values, return with each squared in array
currently empty works
however all other cases just square it

solution; reaosn it returns nil
ruby parser gets to elsif (without conditional we can see) it goes to next line to look for a conditional; finds array.map do |value| whoes value is truthy and thuse elsif always executes when array is not emtpy
because the map ended up part of the conditional, there is no actual code to execute; thus this branch returns nil
=end

def my_method(array)
  if array.empty?
    []
  elsif array.size != 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([]) # []
p my_method([3]) # [21]
p my_method([3, 4]) # [9, 16]
p my_method([5, 6, 7]) # [25, 36, 49]


