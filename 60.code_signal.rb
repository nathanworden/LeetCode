# def mergeStrings(s1, s2)
#   h1 = {}
#   h2 = {}
#   s1.each_char do |char|
#       if h1[char]
#           h1[char] += 1
#       else
#           h1[char] = 1
#       end
#   end
#   s2.each_char do |char|
#       if h2[char]
#           h2[char] += 1
#       else
#           h2[char] = 1
#       end
#   end
#   i1 = 0
#   i2 = 0
#   output = ''
#   while i1 < s1.length || i2 < s2.length
#     if s1[i1].nil?
#       output += s2[i2]
#       i2 += 1
#     elsif s2[i2].nil?
#       output += s1[i1]
#       i1 += 1
#     elsif h1[s1[i1]] < h2[s2[i2]]
#       output += s1[i1]
#       i1 += 1
#     elsif h1[s1[i1]] > h2[s2[i2]]
#       output += s2[i2]
#       i2 += 1
#     elsif h1[s1[i1]] == h2[s2[i2]]
#       if s1[i1] <= s2[i2]
#         output += s1[i1]
#         i1 += 1
#       else s1[i1] < s2[i2]
#         output += s2[i2]
#         i2 += 1
#       end
#     end
#   end
#   output
# end


# s1 = "kkihj"
# s2 = "jbsmfoftph"

# p mergeStrings(s1, s2) #== "jbsmfoftphkkihj"



####### Question 4

def hashMap(queryType, query)
  hsh = []
  output = []
  queryType.each_with_index do |q, idx|
      if q == "insert"
          hsh[query[idx][0]] = query[idx][1]
      elsif q == "addToValue"
        hsh.each do |num|
           num += query[idx][0] if !num.nil?
        end
      elsif q == "addToKey"
          query[idx][0].times do |_|
            hsh.unshift(nil)
        end
      elsif q == "get"
          output << hsh[query[idx][0]]
      end
      p hsh
  end
  output.sum
end


queryType = ["addToKey", 
  "addToKey", 
  "insert", 
  "addToValue", 
  "addToValue", 
  "get", 
  "addToKey", 
  "insert", 
  "addToKey", 
  "addToValue"]

  query = 
  [[-3], 
   [-1], 
   [0,-3], 
   [3], 
   [-1], 
   [0], 
   [-1], 
   [-4,-5], 
   [-1], 
   [-4]]


p hashMap(queryType, query)
# hello