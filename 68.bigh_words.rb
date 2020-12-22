  # While the halfway point isn't also the start or end pointer
  # Pick the element in the middle of the array
  # Compare the word to the first word in the array
        # Lexigraphically compare
        # If the current word comes after the first word, then:
            # Move the start pointer to +1 of the current word
        # If the current word comes before the first word, then:
            # Move the end pointer to -1 of the current word
        # Continue until the start and end pointer are the same
require 'pry'
def find_rotation_point(words)
    first_word = words[0]
    start = 0
    finish = words.length - 1
    current_idx = (finish - start) / 2
    previous_word = current_idx == 0 ? nil : words[current_idx - 1]
    binding.pry
    while current_word_comes_after(previous_word, words[current_idx])
        # p "#{start}, #{finish}"
        current_idx = (finish - start) / 2
        p "current word: #{words[current_idx]}"
        return current_idx + 1 if first_word == words[current_idx]
        if current_word_comes_after(first_word, words[current_idx])
            start = current_idx + 1
        else
            finish = current_idx - 1
         end
    end
    current_idx
end
      
def current_word_comes_after(first_word, current)
        return true if first_word == nil
        first_word.each_char.with_index do |char, idx|
          if char < current[idx]
            return true
          elsif char > current[idx]
            return false
        end
    end
end

  words = ['cape', 'cake']

p find_rotation_point(words)