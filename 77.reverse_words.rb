def reverse_words!(message)

  # Decode the message by reversing the words.
  start_word = 0
  i = 0
  message.length.times do |i|
    if message[i] == ' '
      word = message[start_word..i]
      message.slice!(start_word...-i)
      message += " " + word
      start_word = i
      message.strip!
      p message
      return message if message[i..-1].match(' ') == nil
    end
  end

  message
end


def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

desc = 'two words'
message = 'thief cake'
reverse_words!(message)
expected = 'cake thief'
assert_equal(message, expected, desc)
