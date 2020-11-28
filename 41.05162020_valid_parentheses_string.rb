# Given a string containing only three types of characters: '(', ')' and '*', write a function to check whether this string is valid. We define the validity of a string by these rules:
# Any left parenthesis '(' must have a corresponding right parenthesis ')'.
# Any right parenthesis ')' must have a corresponding left parenthesis '('.
# Left parenthesis '(' must go before the corresponding right parenthesis ')'.
# '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string.
# An empty string is also valid.
def checkValidString(str)
  balance_count = 0
  right_paren = 0
  left_paren = 0
  star_count = 0
  diff = ''
  current_str = ''
  mapIt = true
  arr = str.split('')
  while mapIt
    mapIt = false
    arr.map!.with_index do |char, i|
      char if char == '' || char == '*'
      if char == '(' && arr[i + 1] == ')'
        mapIt = true
        arr[i + 1] = ''
        ''
      else
        char
      end
    end
    arr.delete('')
  end
  return arr
  if left_paren == right_paren
    return true
  else
    diff = (left_paren - right_paren).abs
    return true if diff <= star_count
  end
  return false
end



# p checkValidString("()" )          == true 
# p checkValidString("(*)")          == true
# p checkValidString("(*))")         == true
# p checkValidString("(")            == false
# p checkValidString(")")            == false
# p checkValidString("*")           == true
p checkValidString("(((((())))))") == true
# p checkValidString("((((*())))))") == true
# p checkValidString("((*))")        == true
# p checkValidString("((**")         == true
# p checkValidString("())*")         == false
# p checkValidString("(((******))") == true
# p checkValidString("(())((())()()(*)(*()(())())())()()((()())((()))(*") == false);












