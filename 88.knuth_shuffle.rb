def get_random(floor, ceiling)
  rand(floor..ceiling)
end

def shuffle(array)
  return array if array.length <= 1
  last_index_in_array = array.length - 1
  (0..array.length - 2).each do |index_we_are_choosing_for|
    random_choice_index = get_random(index_we_are_choosing_for, last_index_in_array)
    p array
    if random_choice_index != index_we_are_choosing_for
      array[index_we_are_choosing_for], array[random_choice_index] = array[random_choice_index], array[index_we_are_choosing_for]
    end
  end
end

sample_array = [1, 2, 3, 4, 5]
puts "Sample array: #{sample_array}"

puts 'Shuffling sample array...'
shuffle(sample_array)
puts sample_array.inspect



# My answer:
# def get_random(floor, ceiling)
#   rand(floor..ceiling)
# end

# def shuffle(array)
#   iterations = array.length - 1
#   iterations.times do |i|
#     idx = get_random(0, iterations - i)
#     array << array[idx]
#     array.delete_at(idx)
#   end
# end
