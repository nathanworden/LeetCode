# def hashMap(queryType, query)
#   hsh = {}
#   output = []
#   add_to_keys = 0
#   add_to_values = 0
#   queryType.each_with_index do |q, idx|
#     t_keys = false
#     t_values = false
#       if q == "insert"
#           hsh[query[idx][0]] = query[idx][1]
#       elsif q == "addToValue"
#           add_to_values += query[idx][0]
#       elsif q == "addToKey"
#         add_to_keys += query[idx][0]
#       elsif q == "get"
#           output << hsh[query[idx][0]]
#       end
#   end

#   hsh.transform_values! {|value| value + add_to_values}
#   hsh.transform_keys! {|key| key + add_to_keys}
#   output.sum
# end

def hashMap(queryType, a)
  h = {}
  ans = 0 
  (0...a.size).each do |i|
     if "insert" == queryType[i]
          h[a[i][0]] = a[i][1]
      elsif "get"  == queryType[i]
          ans += h[a[i][0]]
      elsif "addToKey" == queryType[i]
          h.transform_keys!{|k| k+a[i][0]}
      else
          h.keys.each do |j|
              h[j] += a[i][0]
          end
     end
  end
  ans
end


queryType =  ["insert", 
  "addToValue", 
  "get", 
  "insert", 
  "addToKey", 
  "addToValue", 
  "get"]

query = [[1,2], 
[2], 
[1], 
[2,3], 
[1], 
[-1], 
[3]]

 p hashMap(queryType, query)