def n_queens(bsize, row=0, columns = [], solutions = [])
  if row == bsize
    solutions << columns.map {|col| '.' * col + 'Q' + '.' * (bsize - col - 1)}
  end

  bsize.times do |col|
    if valid?(row, col, columns)
      columns[row] = col
      n_queens(bsize, row + 1, columns, solutions)
      columns[row] - 1
    end
  end
  solutions
end

def valid?(row, col, columns)
  row.times do |r|
    return false if columns[r] == col || row - r == (col - columns[r]).abs
  end
  true
end

p n_queens(4)