def merge_ranges(meetings)
  meetings.sort! do |a, b|
    a[0] <=> b[0]
  end
  
  output = [meetings[0]]
  meetings.each.with_index do |sub_arr, idx|
    next if idx == 0
    # p sub_arr
    if sub_arr[0] > output[-1][1]
      output << sub_arr
      next
    # If the comparison array encapsulates the current sub_array
    elsif sub_arr[0] > output[-1][0] && sub_arr[0] < output[-1][1] && sub_arr[1] > output[-1][0] && sub_arr[1] < output[-1][1]
      next
    # If the current sub_array encapsulates the comparison array
    elsif output[-1][0] > sub_arr[0] && output[-1][0] < sub_arr[1] && output[-1][1] > sub_arr[0] && output[-1][1] < sub_arr[1]
      output.pop
      output << sub_arr
      # If the first element of the current sub_array is less than the first element of the comparison array
    elsif sub_arr[0] < output[-1][0]
      output[-1][0] = sub_arr[0]
      # If the second element of the current sub_array is greater than the second element of the comparison array
    elsif sub_arr[1] > output[-1][1]
      output[-1][1] = sub_arr[1]
    end
  end
  output
end


meetings = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
p merge_ranges(meetings)

meeting2 = [[1, 2], [2, 3]]
p merge_ranges(meeting2)

meeting3 = [[1, 3], [2, 4]]
p merge_ranges(meeting3)

meetings4 =   [[1, 5], [2, 3]]
p merge_ranges(meetings4)

meetings5 = [[1, 10], [2, 6], [3, 5], [7, 9]]
p merge_ranges(meetings5)