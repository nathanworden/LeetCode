require 'set'

# def get_permutations(string)
#   set = string.split('').permutation(string.length).to_a.map! {|arr| arr.join('')}
  
#   Set.new(set)
# end


def get_permutations(string)
  if string.length <= 1
    return Set.new([string])
  end

  all_chars_except_last = string[0..-2]
  last_char = string[-1]
  permutations_of_all_chars_except_last = get_permutations(all_chars_except_last)
  permutations = Set.new
  permutations_of_all_chars_except_last.each do |permutation_of_all_chars_except_last|
    (0..all_chars_except_last.length).each do |position|
      permutation = permutation_of_all_chars_except_last[0...position] + last_char + permutation_of_all_chars_except_last[position..-1]
      permutations.add(permutation)
    end
  end
  permutations
end















# Tests

def run_tests
  desc = 'empty string'
  actual = get_permutations('')
  expected = Set.new([''])
  assert_equal(actual, expected, desc)

  desc = 'one character string'
  actual = get_permutations('a')
  expected = Set.new(['a'])
  assert_equal(actual, expected, desc)

  desc = 'two character string'
  actual = get_permutations('ab')
  expected = Set.new(['ab', 'ba'])
  assert_equal(actual, expected, desc)

  desc = 'three character string'
  actual = get_permutations('abc')
  expected = Set.new(['abc', 'acb', 'bac', 'bca', 'cab', 'cba'])
  assert_equal(actual, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests