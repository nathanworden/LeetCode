# iven two strings, find the number of common characters between them.

# Example

# For s1 = "aabcc" and s2 = "adcaa", the output should be
# commonCharacterCount(s1, s2) = 3.

# Strings have 3 common characters - 2 "a"s and 1 "c".

# Input/Output

# [execution time limit] 4 seconds (rb)

# [input] string s1

# A string consisting of lowercase English letters.

# Guaranteed constraints:
# 1 ≤ s1.length < 15.

# [input] string s2

# A string consisting of lowercase English letters.

# Guaranteed constraints:
# 1 ≤ s2.length < 15.

# [output] integer

def commonCharacterCount(s1, s2)
  sorted1 = s1.split('').sort
  sorted2 = s2.split('').sort
  shorter = sorted1.length < sorted2.length ? sorted1 : sorted2
  longer = sorted1.length >= sorted2.length ? sorted1 : sorted2
  common = []
  shorter.each_with_index do |shorter_char, shorter_idx|
      match_idx = nil
      longer.each_with_index do |longer_char, longer_idx|
          if shorter_char == longer_char
              common << shorter_char
              match_idx = longer_idx 
              break
          end
      end
      longer.delete_at(match_idx) if match_idx
  end
  common.length
end