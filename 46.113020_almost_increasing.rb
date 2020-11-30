
# Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

# Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing only one element is also considered to be strictly increasing.

# Example

# For sequence = [1, 3, 2, 1], the output should be
# almostIncreasingSequence(sequence) = false.

# There is no one element in this array that can be removed in order to get a strictly increasing sequence.

# For sequence = [1, 3, 2], the output should be
# almostIncreasingSequence(sequence) = true.

# You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

# Input/Output

# [execution time limit] 4 seconds (rb)

# [input] array.integer sequence

# Guaranteed constraints:
# 2 ≤ sequence.length ≤ 105,
# -105 ≤ sequence[i] ≤ 105.

# [output] boolean

# Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.


# def almostIncreasingSequence(sequence)
#     possible = 0
#     sequence.each_with_index do |num, idx|
#         if idx == 0
#             current = sequence[1..-1] 
#         elsif idx == sequence.length - 1
#             current = sequence[0...-1]
#         else
#             current = sequence[0...idx] + sequence[idx+1..-1]
#         end

#         possible += 1 if increases?(current)
#     end
#     possible >= 1
# end

def almostIncreasingSequence(sequence)
  return false if three_of_a_kind?(sequence)
  return true if increases?(sequence[0..-2])
  i = 0
  breach = 0
  highest = -Float::INFINITY
  loop do
      break if i >= sequence.length - 1  
      i = 0 if i < 0
      if sequence[i+1]
          if sequence[i] >= sequence[i + 1]
              breach += 1
              # p "breach! sequence: #{sequence}, i:#{sequence[i]}, next: #{sequence[i+1]} breach: #{breach}"
              if sequence[i+2] && increases?([sequence[i-1], sequence[i], sequence[i + 2]])
                  sequence.delete_at(i + 1)
                  i -= 1
              else
                  sequence.delete_at(i)
                  i -=2
              end
              # i = 0 if i < 0
          end
      end
      # p "sequence: #{sequence}, i:#{sequence[i]}, next: #{sequence[i+1]} breach: #{breach}"
      i += 1
  end
  breach <= 1
end

def three_of_a_kind?(sequence)
  hsh = {}
  sequence.each do |num|
      if hsh[num]
          hsh[num] += 1
      else
          hsh[num] = 1
      end
  end
  hsh.any? {|key, value| value >= 3}
end

def increases?(arr)
  breach = 0
  arr.each_with_index do |num, idx|
      next if idx == arr.length - 1
      breach += 1 if !(num < arr[idx + 1])
  end
  breach == 0
end




arr = [1, 2, 1, 2]

p almostIncreasingSequence(arr)