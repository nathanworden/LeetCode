def find_rectangular_overlap(rect1, rect2)

  # Calculate the overlap between the two rectangles.
  

  {
    left_x: nil,
    bottom_y: nil,
    width: nil,
    height: nil
  }
end


















# Tests

def run_tests
  rect1 = {
    left_x: 1,
    bottom_y: 1,
    width: 6,
    height: 3
  }
  rect2 = {
    left_x: 5,
    bottom_y: 2,
    width: 3,
    height: 6
  }
  expected = {
    left_x: 5,
    bottom_y: 2,
    width: 2,
    height: 2
  }
  actual = find_rectangular_overlap(rect1, rect2)
  assert_equal(actual, expected, 'overlap along both axes')

  rect1 = {
    left_x: 1,
    bottom_y: 1,
    width: 6,
    height: 6
  }
  rect2 = {
    left_x: 3,
    bottom_y: 3,
    width: 2,
    height: 2
  }
  expected = {
    left_x: 3,
    bottom_y: 3,
    width: 2,
    height: 2
  }
  actual = find_rectangular_overlap(rect1, rect2)
  assert_equal(actual, expected, 'one rectangle inside another')

  rect1 = {
    left_x: 2,
    bottom_y: 2,
    width: 4,
    height: 4
  }
  rect2 = {
    left_x: 2,
    bottom_y: 2,
    width: 4,
    height: 4
  }
  expected = {
    left_x: 2,
    bottom_y: 2,
    width: 4,
    height: 4
  }
  actual = find_rectangular_overlap(rect1, rect2)
  assert_equal(actual, expected, 'both rectangles the same')

  rect1 = {
    left_x: 1,
    bottom_y: 2,
    width: 3,
    height: 4
  }
  rect2 = {
    left_x: 2,
    bottom_y: 6,
    width: 2,
    height: 2
  }
  expected = {
    left_x: nil,
    bottom_y: nil,
    width: nil,
    height: nil
  }
  actual = find_rectangular_overlap(rect1, rect2)
  assert_equal(actual, expected, 'touch on horizontal edge')

  rect1 = {
    left_x: 1,
    bottom_y: 2,
    width: 3,
    height: 4
  }
  rect2 = {
    left_x: 4,
    bottom_y: 3,
    width: 2,
    height: 2
  }
  expected = {
    left_x: nil,
    bottom_y: nil,
    width: nil,
    height: nil
  }
  actual = find_rectangular_overlap(rect1, rect2)
  assert_equal(actual, expected, 'touch on vertical edge')

  rect1 = {
    left_x: 1,
    bottom_y: 1,
    width: 2,
    height: 2
  }
  rect2 = {
    left_x: 3,
    bottom_y: 3,
    width: 2,
    height: 2
  }
  expected = {
    left_x: nil,
    bottom_y: nil,
    width: nil,
    height: nil
  }
  actual = find_rectangular_overlap(rect1, rect2)
  assert_equal(actual, expected, 'touch at a corner')

  rect1 = {
    left_x: 1,
    bottom_y: 1,
    width: 2,
    height: 2
  }
  rect2 = {
    left_x: 4,
    bottom_y: 6,
    width: 3,
    height: 6
  }
  expected = {
    left_x: nil,
    bottom_y: nil,
    width: nil,
    height: nil
  }
  actual = find_rectangular_overlap(rect1, rect2)
  assert_equal(actual, expected, 'no overlap')
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

run_tests