class Fibber
  def initialize
    @memo = {}
  end

  def fib(n)
    if n < 0
      raise ArgumentError, "Index was negative. No such thing as a negative index in a series"
    elsif n == 0 || n == 1
      n
    elsif @memo.key?(n)
      puts "grabbing memo[#{n}]"
      @memo[n]
    else
      puts "computing fib(#{n})"
      result = fib(n - 1) + fib(n - 2)
      @memo[n] = result
      result
    end
  end
end

fibber = Fibber.new
fibber.fib(5)


def fibonacci(num)
  return num if num == 0 || num == 1
  hsh = {}
  if hsh[num]
    hsh[num]
  else
    result = fibonacci(num - 1) + fibonacci(num - 2)
    hsh[num] = result
    result
  end
end

p fibonacci(5)