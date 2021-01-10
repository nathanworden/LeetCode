def find_rotation_point(words)
  front_idx = 0
  back_idx = words.length - 1
  
  while front_idx < back_idx
    middle = (back_idx - front_idx) / 2
    p middle
    current = words[middle]
    word_before = words[middle - 1]
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
      front_idx = middle - 1
    elsif words[middle] > words[0]
      back_idx = middle + 1
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