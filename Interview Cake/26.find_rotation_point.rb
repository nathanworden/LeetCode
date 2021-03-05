
# def find_rotation_point(words)
#     first_word = words[0]
#     floor_index = 0
#     ceiling_index = words.length - 1
#     while floor_index < ceiling_index
#         guess_idx = (floor_index + ceiling_index) / 2
#         if words[guess_idx] >= first_word
#             floor_index = guess_idx
#         else
#             ceiling_index = guess_idx
#         end
#         return ceiling_index if floor_index + 1 == ceiling_index
#     end
# end








# def find_rotation_point(words)
#   if words.length == 2
#     return words[0] < words[1] ? 0 : 1
#   end
#   first_word = words[0]
#   opening_idx = 0
#   closing_idx = words.length - 1
#   middle_idx = (closing_idx - opening_idx) / 2
#   current_word = words[middle_idx]
#   while current_word > words[middle_idx - 1]
#     if first_word < current_word
#       opening_idx = middle_idx + 1
#     elsif first_word > current_word
#       closing_idx = middle_idx - 1  
#     end
#     middle_idx = (closing_idx + opening_idx) / 2
#     current_word = words[middle_idx]
#   end
#   middle_idx
# end





def find_rotation_point(words)
  front_idx = 0
  back_idx = words.length - 1
  
  while front_idx <= back_idx
    middle = ((back_idx - front_idx) / 2) + front_idx
    current = words[middle] 
    word_before = (middle - 1 < 0) ? nil : words[middle - 1]
    word_after = words[middle + 1] 

    last_word = word_after.nil?
    first_word = word_before.nil?
    if first_word
      return middle if current < word_after
      return middle + 1
    elsif last_word 
      return middle if current < word_before
      return middle - 1
    elsif current < word_before && current < word_after
      return middle
    end
    if words[middle] < words[0]
      back_idx = middle - 1
    elsif words[middle] > words[0]
      front_idx = middle + 1
    end
  end
  nil
end


















# Tests

def run_tests
  desc = 'small array'
  actual = find_rotation_point(['cape', 'cake'])
  expected = 1
  assert_equal(actual, expected, desc)

  desc = 'medium array'
  actual = find_rotation_point(['grape', 'orange', 'plum', 'radish', 'apple'])
  expected = 4
  assert_equal(actual, expected, desc)

  desc = 'large array'
  actual = find_rotation_point(['ptolemaic', 'retrograde', 'supplant',
                                'undulate', 'xenoepist', 'asymptote',
                                'babka', 'banoffee', 'engender',
                                'karpatka', 'othellolagkage'])
  expected = 5
  assert_equal(actual, expected, desc)

  # Are we missing any edge cases?
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests