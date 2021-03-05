# arr = [1, 2, 3]

# p arr.each_with_index.reduce([]) do |memo,  (ele, index)| 
#   memo + ele
# end

arr = [1,2,3,4,5]
output = arr.map.with_index do |memo, index|
  sub_arr = []
  arr.each_with_index do |num, idx| 
    p "#{idx}, #{index}"
    sub_arr << num unless index == idx
  end
  sub_arr.reduce(&:*)
end

p output