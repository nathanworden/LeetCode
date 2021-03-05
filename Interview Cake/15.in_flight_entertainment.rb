# def can_two_movies_fill_flight?(movie_lengths, flight_length)
#     return false if movie_lengths.length < 2
#     first = movie_lengths[0]
#     second = movie_lengths[1]
#     set = [first, second]
#     i = 1
#     while (i + 1) < movie_lengths.length
#       set.sort!
#       p set
#       return true if set[0] + set[1] <= flight_length
#       i += 1
#       current = movie_lengths[i]
#       if current < set[0] 
#         set.pop
#         set.unshift(current)
#       elsif current < set[1]
#         set[1] = current
#       end
#     end
#     set[0] + set[1] <= flight_length
#   end



# def can_two_movies_fill_flight?(movie_lengths, flight_length)
#   min = movie_lengths[0]
#   current_idx = 1
#   current = movie_lengths[current_idx]
#   while current_idx < movie_lengths.length
#     current = movie_lengths[current_idx]
#     if min + current == flight_length
#       return true
#     else
#       min = current if current < min
#     end
#     current_idx += 1
#   end
#   false
# end




# Tests

def run_tests
  desc = 'short flight'
  result = can_two_movies_fill_flight?([2, 4], 1)
  assert_false(result, desc)

  desc = 'long flight'
  result = can_two_movies_fill_flight?([2, 4], 6)
  assert_true(result, desc)

  desc = 'one movie half flight length'
  result = can_two_movies_fill_flight?([3, 8], 6)
  assert_false(result, desc)

  desc = 'two movies half flight length'
  result = can_two_movies_fill_flight?([3, 8, 3], 6)
  assert_true(result, desc)

  desc = 'lots of possible pairs'
  result = can_two_movies_fill_flight?([1, 2, 3, 4, 5, 6], 7)
  assert_true(result, desc)

  desc = 'not using first movie'
  result = can_two_movies_fill_flight?([4, 3, 2], 5)
  assert_true(result, desc)

  desc = 'multiple movies shorter than flight'
  result = can_two_movies_fill_flight?([5, 6, 7, 8], 9)
  assert_false(result, desc)

  desc = 'only one movie'
  result = can_two_movies_fill_flight?([6], 6)
  assert_false(result, desc)

  desc = 'no movies'
  result = can_two_movies_fill_flight?([], 2)
  assert_false(result, desc)
end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests