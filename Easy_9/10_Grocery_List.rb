=begin
Write a method which takes a grocery list (array) 
of fruits with quantities and converts it into an 
array of the correct number of each fruit.
=end

def buy_fruit(list)
  final_list = []
  list.each do |sub_arr|
    sub_arr[1].times { |_| final_list << sub_arr[0]}
  end
  final_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]