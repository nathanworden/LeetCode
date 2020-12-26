def reverse_words!(message)
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
    p next_space
    current_start = start_word
    current_end = next_space - 1
    while current_start < current_end
      p "#{current_start}, #{current_end}"
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


message = 'rat the ate cat the'
p reverse_words!(message)