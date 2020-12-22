require 'set'

def can_two_movies_fill_flight?(movie_lengths, flight_length)             
  movie_lengths_seen = Set.new
  movies_lengths.any? do |first_movie_length|
    matching_second_movie_length = flight_length - first_movie_length
    if movie_lengths_seen.include?(matching_second_movie_length)
      true
    else
      movie_lengths_seen.add(first_movie_length)
      false
    end
  end
end

