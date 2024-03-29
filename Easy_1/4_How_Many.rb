=begin
Write a method that counts the number of occurrences of each element in a given array.
The words in the array are case-sensitive: 'suv' != 'SUV'. ` 
Once counted, print each element alongside the number of occurrences.
Expected output:
{'car' => 4
'truck' => 3
'SUV' => 1
'motorcycle' => 2}
=end

def count_occurrences(vehicles)
  hash = Hash.new(0)
  vehicles.each do |vehicle|
    hash[vehicle] += 1
  end
  hash
end

def count_occurrences_ci(arr)
  hash = Hash.new(0)
  arr.each do |e|
    hash[e.downcase] += 1
  end
  hash.each { |k, v| puts "#{k} => #{v}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)
p count_occurrences(vehicles) == {'car' => 4, 'truck' => 3, 'SUV' => 1, 'motorcycle' => 2}
