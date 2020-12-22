

require 'pry'
def can_two_movies_fill_flight?(movie_lengths, flight_length)
    # binding.pry
    # Determine if two movie runtimes add up to the flight length.
    return false movie_lengths.length < 2
    first = movie_lengths[0]
    second = movie_lengths[1]
    set = [first, second]
    i = 1
    while (i + 1) < movie_lengths.length
      set.sort!
      p set
      return true if set[0] + set[1] <= flight_length
      i += 1
      current = movie_lengths[i]
      if current < set[0] 
        set.pop
        set.unshift(current)
      elsif current < set[1]
        set[1] = current
      end
    end
    set[0] + set[1] <= flight_length
  end
  

 p can_two_movies_fill_flight?([6], 6)