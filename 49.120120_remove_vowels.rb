

def remove_vowels_and_sometimes_y(str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  includes_vowels = false
  vowels.each do |vowel|
    includes_vowels = true if str.include?(vowel)
  end

  arr = str.split('')

  if includes_vowels
    i = 0
    while i < arr.length
      if vowels.include?(arr[i])
        arr.delete_at(i)
        i -= 1
      end
      i += 1
    end
  else
    arr.delete('y')
  end

  arr.join('')
end

def remove_vowels_simple(str)
  str.gsub(/[aeiou]/, '')
end

str = "take the vowels out of me!"
str2 = "my!"


p remove_vowels_and_sometimes_y(str) == "tk th vwls t f m!" # => true
p remove_vowels_and_sometimes_y(str2) == "m!"
p remove_vowels_simple(str) == "tk th vwls t f m!"
p remove_vowels_simple(str2) == 'my!'