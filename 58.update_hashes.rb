hsh = {"a": 1, "b": 2, "c": 3}
hsh2 = {1 => 1, 2 => 2, 3 => 3}

# hsh.each_pair do |key, value|
#   p "#{key}: #{value}"
# end

hsh.transform_keys! {|key| key.to_s + "hello"}

p hsh