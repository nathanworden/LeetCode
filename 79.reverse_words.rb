def reverse_words!(message)
  reverse_characters!(message, 0, message.length - 1)
  current_word_start_index = 0
  (0..message.length).each do |i|
    next unless i == message.length || message[i] == ' '
    reverse_characters!(message, current_word_start_index, i - 1)
    current_word_start_index = i + 1
  end
end

def reverse_characters!(message, left_index, right_index)
  while left_index < right_indexmessage[left_index], message[right_index] = message[right_index], message[left_index]
    left_index += 1
    right_index -= 1
  end
end