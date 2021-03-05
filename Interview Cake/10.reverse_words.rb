def reverse_words!(message)
  return message if message.index(' ') == nil
  front = 0
  back = message.length - 1
  while front < back
    message[front], message[back] = message[back], message[front]
    front += 1
    back -= 1
  end

  start_word = 0
  next_space = message.index(' ')
  spaces = (message.count(' ')) + 1
  spaces.times do |_|
    current_start = start_word
    current_end = next_space - 1
    while current_start < current_end
      message[current_start], message[current_end] = message[current_end], message[current_start]
      current_start += 1
      current_end -= 1
    end
    start_word = next_space + 1
    next_space = message.index(' ', next_space + 1)
    next_space = message.length if next_space.nil?
  end
  message
end




# Tests

def run_tests
  desc = 'one word'
  message = 'vault'
  reverse_words!(message)
  expected = 'vault'
  assert_equal(message, expected, desc)

  desc = 'two words'
  message = 'thief cake'
  reverse_words!(message)
  expected = 'cake thief'
  assert_equal(message, expected, desc)

  desc = 'three words'
  message = 'one another get'
  reverse_words!(message)
  expected = 'get another one'
  assert_equal(message, expected, desc)

  desc = 'multiple words same length'
  message = 'rat the ate cat the'
  reverse_words!(message)
  expected = 'the cat ate the rat'
  assert_equal(message, expected, desc)

  desc = 'multiple words different lengths'
  message = 'yummy is cake bundt chocolate'
  reverse_words!(message)
  expected = 'chocolate bundt cake is yummy'
  assert_equal(message, expected, desc)

  desc = 'empty string'
  message = ''
  reverse_words!(message)
  expected = ''
  assert_equal(message, expected, desc)
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests