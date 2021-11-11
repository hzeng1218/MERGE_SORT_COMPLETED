def merge_sort(array)
  if array.length < 2
    array
  else
    left = merge_sort(array[0...array.length/2])
    right = merge_sort(array[array.length/2..array.length])
    sorted_array = []
    left_index = 0
    right_index = 0
    while left_index < left.length && right_index < right.length
      if left[left_index] < right[right_index]
        sorted_array << left[left_index]
        left_index += 1
      else
        sorted_array << right[right_index]
        right_index += 1
      end
    end
    if right_index == right.length
      sorted_array = sorted_array + left
    elsif left_index == left.length
      sorted_array = sorted_array + right
    end
    sorted_array
  end
end

p merge_sort([3,1,5,4])