def merge_sort(array)
  return array if array.length == 1

  n = array.length / 2
  left_array = merge_sort(array[0...n])
  right_array = merge_sort(array[n..])
  merge(left_array, right_array)
end

def merge(left_array, right_array)
  new_array = []
  (left_array + right_array).length.times do
    break if left_array.none? || right_array.none?

    new_array << (left_array.first < right_array.first ? left_array.shift : right_array.shift)
  end
  new_array + left_array + right_array
end

a = [105, 79, 100, 110]
puts merge_sort(a)
