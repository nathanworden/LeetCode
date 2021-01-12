class TempTracker

  # Implement methods to track the max, min, mean, and mode.
  

  def insert(temperature)
  end

  def get_max
  end

  def get_min
  end

  def get_mean
  end

  def get_mode
  end
end


















# Tests

def run_tests
  tracker = TempTracker.new

  tracker.insert(50)
  msg = 'on first temp recorded'
  assert_equal(tracker.get_max, 50, "max #{msg}")
  assert_equal(tracker.get_min, 50, "min #{msg}")
  assert_equal(tracker.get_mean, 50.0, "mean #{msg}")
  assert_equal(tracker.get_mode, 50, "mode #{msg}")

  tracker.insert(80)
  msg = 'on higher temp recorded'
  assert_equal(tracker.get_max, 80, "max #{msg}")
  assert_equal(tracker.get_min, 50, "min #{msg}")
  assert_equal(tracker.get_mean, 65.0, "mean #{msg}")
  assert_in(tracker.get_mode, [50, 80], "mode #{msg}")

  tracker.insert(80)
  msg = 'on third temp recorded'
  assert_equal(tracker.get_max, 80, "max #{msg}")
  assert_equal(tracker.get_min, 50, "min #{msg}")
  assert_equal(tracker.get_mean, 70.0, "mean #{msg}")
  assert_equal(tracker.get_mode, 80, "mode #{msg}")

  tracker.insert(30)
  msg = 'on lower temp recorded'
  assert_equal(tracker.get_max, 80, "max #{msg}")
  assert_equal(tracker.get_min, 30, "min #{msg}")
  assert_equal(tracker.get_mean, 60.0, "mean #{msg}")
  assert_equal(tracker.get_mode, 80, "mode #{msg}")
end

def assert_equal(a, b, desc)
  puts "#{desc} ... #{a == b ? 'PASS' : "FAIL: #{a.inspect} != #{b.inspect}"}"
end

def assert_in(a, bs, desc)
  puts "#{desc} ... #{bs.include?(a) ? 'PASS' : "FAIL: #{a.inspect} not in #{bs.inspect}"}"
end

run_tests