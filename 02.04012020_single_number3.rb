# def single_number(nums)
#   uniques = []
#   nums.each  do |num| 
#     if uniques.include?(num)
#       uniques.delete(num)
#     else 
#       uniques << num
#     end
#   end 
#   uniques
# end

def single_number(nums)
  uniques = []
  nums.each do |num|
    uniques.include?(num) ? uniques.delete(num) : uniques << num
  end
  uniques
end


p single_number([1,2,1,3,2,5])