class Trie

  # Implement a trie and use it to efficiently store strings.
  

  def add_word(word)
    false
  end
end


















# Tests

def run_tests
  trie = Trie.new

  result = trie.add_word('catch')
  assert_true(result, 'new word 1')

  result = trie.add_word('cakes')
  assert_true(result, 'new word 2')

  result = trie.add_word('cake')
  assert_true(result, 'prefix of existing word')

  result = trie.add_word('cake')
  assert_false(result, 'word already present')

  result = trie.add_word('caked')
  assert_true(result, 'new word 3')

  result = trie.add_word('catch')
  assert_false(result, 'all words still present')

  result = trie.add_word('')
  assert_true(result, 'empty word')

  result = trie.add_word('')
  assert_false(result, 'empty word present')
end

def assert_true(value, desc)
  puts "#{desc} ... #{value ? 'PASS' : "FAIL: #{value} is not true"}"
end

def assert_false(value, desc)
  puts "#{desc} ... #{value ? "FAIL: #{value} is not false" : 'PASS'}"
end

run_tests