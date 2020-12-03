def longest_flat(array)
  longest = 0
  current = 1
  array.each_with_index do |num, idx|
    if array[idx - 1]
      if num == array[idx - 1]
        current += 1
        p "current: #{current}, longest: #{longest}"
        longest = current if current > longest
      else
        current = 1
      end
    end
  end
  longest
end

# arr = [1, 1, 1]
arr = [1,1,17788555588]

p longest_flat(arr)