=begin
input: array and a search val
output: boolean value

brute force: iterate over array and check if each is equal one by one
O(N) time

=end

def include?(arr, search_val)
  arr.each do |val|
    return true if val == search_val
  end

  false  
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
