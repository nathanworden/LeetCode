def get_random(floor, ceiling)
  rand(floor..ceiling)
end

def shuffle(array)
  iterations = array.length - 1
  iterations.times do |i|
    idx = get_random(0, iterations - i)
    array << array[idx]
    array.delete_at(idx)
  end
end

sample_array = [1, 2, 3, 4, 5]
puts "Sample array: #{sample_array}"

puts 'Shuffling sample array...'
shuffle(sample_array)
puts sample_array.inspect