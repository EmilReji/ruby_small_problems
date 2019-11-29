require_relative "7"

def merge_sort(ar)
  ar = ar.map { |v| [v] }
  ar << [] if ar.size.odd?

  loop do # create an even pair, & merge each pair
    ar = ar.each_slice(2).to_a.map { |a, b| merge a, b }
    # each_slice(2) converts the arr so every 2 elements is in its own nested array; basically # of elements is halved
    # to_a makes the enumrator an array
    # map is then applied on each nested array (2 elements each of which is an array with a single element); merged array is what the nested array is transformed into

    break ar[0] if ar.size <= 1
    # arr.size is less than or equal ot one when all values have been sorted and you have one element in arr (which itself is a single array full of values; hence returning of ar[0])
    ar << [] if ar.size.odd?
    # adds another empty sub-array to end of array if size is odd to ensure size is even
  end
end

def merge_sort(array)
  ary = array.permutation(1).to_a
  # converts [1, 2, 3] to [[1], [2], [3]]

  loop do
    p ary
    element1 = ary.shift
    element2 = ary.shift

    merged = merge(element1, element2)
    # merges the first two elements; initially just two array's each with one element inside; eventually as this progresses, number of elements in array increases

    return array.replace(merged) if merged.size == array.size
    # ends up true when the final array created by merge is equal to the size of the original input array; in that case it just replaces original array with the new merged one

    ary.push(merged)
    # adds the merged array to the end of the working array  
  end
end
