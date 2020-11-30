# def string_check(str)
#   balance_count = 0
#   right_paren = 0
#   left_paren = 0
#   star_count = 0
#   diff = ''
#   current_str = ''
#   mapIt = true
#   arr = str.split('')
#   while mapIt
#     mapIt = false
#     arr.map!.with_index do |char, i|
#       char if char == '' || char == '*'
#       if char == '(' && arr[i + 1] == ')'
#         mapIt = true
#         arr[i + 1] = ''
#         ''
#       else
#         char
#       end
#     end
#     arr.delete('')
#   end
#   return arr
#   if left_paren == right_paren
#     return true
#   else
#     diff = (left_paren - right_paren).abs
#     return true if diff <= star_count
#   end
#   return false
# end

# def string_check(str)
#   arr = str.split('')
#   low_left = 0
#   high_left = 0
#   left_paren = 0
#   right_stars = 0

#   arr.each do |char|
#     right_stars += 1 if char == '(' || char == '*'
#     left_paren += 1 if char == ')'

#     return false if left_paren > right_stars

#     low_left += char == '(' ? 1 : -1
#     high_left += char == ')' ? 1 : -1
#     return false if high_left < 0
#     low_left = [low_left, 0].max
#   end

#   return low_left == 0
# end

# Gino Answer:


def string_check(str)
  low_left = 0
  high_left = 0
  right_stars = 0
  left_paren = 0
  arr = str.split('')
  arr.each do | char |
    right_stars += 1 if char == '(' || char == '*'
    left_paren += 1 if char == ')'

    return false if left_paren > right_stars

    low_left += char == '(' ? 1 : -1
    # high_left += char == ')' ? 1 : -1
    low_left = [0, low_left].max
  end
  return low_left <= 0
end

# p string_check("()")           == true
# p string_check("(*)")          == true
# p string_check("(*))")         == true
# p string_check("(")            == false
# p string_check(")")            == false
# p string_check("*")            == true
# p string_check("(((((())))))") == true
# p string_check("((((*())))))") == true
# p string_check("((*))")        == true
# p string_check("((**")         == true
# p string_check("())*")         == false
# p string_check("(((******))") == true
# p string_check("(())((())()()(*)(*()(())())())()()((()())((()))(*") == false


# var checkValidString = function(s) {
#   let smalPosNumOpnLftB = 0;
#   let largPosNumOpnLftB = 0;
#   for (let i = 0; i < s.length; i += 1) {
#     smalPosNumOpnLftB += s[i] === '(' ? 1 : -1;
#     largPosNumOpnLftB += s[i] !== ')' ? 1 : -1;
#     if (largPosNumOpnLftB < 0) {break}
#     smalPosNumOpnLftB = Math.max(smalPosNumOpnLftB, 0);
#   }
#   return smalPosNumOpnLftB === 0;
# }



# ["(", ", ")"]
# # p string_check("(())((())()()(*)(*()(())())())()()((()())((()))(*")
# p string_check(("((((*)))))"))
# # p string_check('*')
# # p string_check('(*))')
# # intialize a varaible to show parenthesis equality
# # itterate over the string
# #   if ( pe += 1
# #   if ) pe -= 1





















# Given a string containing only three types of characters: '(', ')' and '*', write a function to check whether this string is valid. We define the validity of a string by these rules:
# Any left parenthesis '(' must have a corresponding right parenthesis ')'.
# Any right parenthesis ')' must have a corresponding left parenthesis '('.
# Left parenthesis '(' must go before the corresponding right parenthesis ')'.
# '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string.
# An empty string is also valid.
# def string_check(str)
#   right_stars = 0
#   left_paren = 0
#   arr = str.split('')
#   low_left = 0
#   high_left = 0
#   arr.each do | char |
#     right_stars += 1 if char == '(' || char == '*'
#     left_paren += 1 if char == ')'
#     return false if left_paren > right_stars
#     low_left += char == '(' ? 1 : -1
#     # high_left += char == ')' ? 1 : -1
#     low_left = [0, low_left].max
#   end
#   return low_left <= 0
# end


p string_check("()")           == true
p string_check("(*)")          == true
p string_check("(*))")         == true
p string_check("(")            == false
p string_check(")")            == false
p string_check("*")            == true
p string_check("(((((())))))") == true
p string_check("((((*())))))") == true
p string_check("((*))")        == true
p string_check("((**")         == true
p string_check("())*")         == false
p string_check("(((******))") == true
p string_check("(())((())()()(*)(*()(())())())()()((()())((()))(*") == false



# 1:-1  2:-2 1:1  0:2  1:3  0:2 -1:1 -2:0  -1:1  0:0 -1:-1
# ["(", "(", "*", ")", "(", "*", ")", ")", "(", "(", "*"]
# p string_check(')')
# p string_check("(())((())()()(*)(*()(())())())()()((()())((()))(*")
# p string_check("(())((())()()(*)(*()(())())())()()((()())((()))(*")
# p string_check("((((*)))))")
# p string_check('*')
# p string_check('(*))')
##