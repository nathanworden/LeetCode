def find_rotation_point(words)
    i = 0
    first_word = words[i]
    second_word = words[i + 1]
    p right_order(first_word, second_word)
    while right_order(first_word, second_word)
      i += 1
      first_word = words[i]
      second_word = words[i+1]
    end
  
    i
  end
  
  
  def right_order(first_word, second_word)
    
  end

  p find_rotation_point(['grape', 'orange', 'plum', 'radish', 'apple'])