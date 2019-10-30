def running_total2(arr)
  i = 0

  arr.map do |num|
    sum = arr[0..i].sum
    i += 1    
    sum
  end
end

def running_total(arr)
  sum = 0

  arr.each_with_object([]) do |num, result|
    sum += num
    result << sum  
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
