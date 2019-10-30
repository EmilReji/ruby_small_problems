=begin
Write a method that takes one argument, an array containing integers, 
and returns the average of all numbers in the array. The array will 
never be empty and the numbers will always be positive integers.
=end

def average2(arr)
  arr.sum/arr.length
end

def average(arr)
  (arr.sum/arr.length).to_f.round(2)
end


puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([1.3, 4.6, 7.8])
puts average([1.3, 4.6, 7.8]) == 4.57