

data = [
        [  2,   4,  6,  8,   1, 2,  3,  4,    16, 15, 14, 13],
        [ '?',  12, 14, 16,  5, 6,  7,  8,    12, 11, 10,  9],
        [ 15,  13, 11,  9,   9, 10, 11, 12,    8,  7,  6,  5],
        [  7,  5,   3,  1,  13, 14, '?', 16,   4, '?',  2,  1]
]

def uncover_questions(data)
    num_cubes = data[0].length / 4
    rearrange = Array.new(num_cubes, [])
    data.each_with_index do |row, row_idx|
        row.each_with_index do |num, num_idx|
            p (num_idx + 1) % 4
        end
    end

    rearrange
end


p uncover_questions(data)
 
# [10, 15, 3]

[
    [ 16, 15, 14, 13,   2,   4,  6,  8,   1, 2,  3,  4],
    [ 12, 11, 10,  9,   10,  12, 14, 16,    5, 6,  7,  8],
    [  8,  7,  6,  5,   15,  13, 11,  9,    9, 10, 11, 12],
    [  4,  3,  2,  1,     7,  5,   3,  1,  13, 14,  15, 16]
]

