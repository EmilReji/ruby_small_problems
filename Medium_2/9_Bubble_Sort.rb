

def bubble_sort2!(arr)
  iteration = 0
  
  loop do
    break if iteration >= arr.length - 1
    current_index = 0
    
    loop do
      break if current_index >= arr.length - 1
      
      if arr[current_index] > arr[current_index + 1]
        temp = arr[current_index]
        arr[current_index] = arr[current_index + 1]
        arr[current_index + 1] = temp
      end
      
      current_index += 1
    end
    
    iteration += 1
  end
end

# Further Exploration
def bubble_sort!(arr)
  end_index = arr.length - 1
  
  loop do
    break if end_index <= 0
    current_index = 0
    
    loop do
      break if current_index >= arr.length - 1
      
      if arr[current_index] > arr[current_index + 1]
        temp = arr[current_index]
        arr[current_index] = arr[current_index + 1]
        arr[current_index + 1] = temp
      end
      
      current_index += 1
    end
    
    end_index -= 1
  end
end


array = [5, 3]
bubble_sort!(array)
p array 
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)