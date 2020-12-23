meetings = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]


meetings.sort! do |a, b|
  a[0] <=> b[0]
end

p meetings


test = [[99, 9], [8, 7], [87, 2], [2, 77], [14, 14]]

test.sort! do |a, b|
  a[0] <=> b[0]
end

p test