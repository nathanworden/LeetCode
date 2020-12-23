def merge_sort(array_to_sort)
  if array_to_sort.length < 2
    return array_to_sort
  end
  mid_index = array_to_sort.length / 2
  left = array_to_srt[0..mid_index]
  right = array_to_sort[mid_index..-1]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  sorted_array = 0
  until sorted_left.empty? && sorted_right.empty? do
    if !sorted_left.empty && (sorted_right.empty? || sorted_left[0] < sorted_right[0])
      sorted_array << sorted_left.shift
    else
      sorted_array << sorted_right.shift
    end 
  end
  sorted_array
end