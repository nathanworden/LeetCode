def stock_runs(prices)
  rose = 0
  fell = 0
  falls = []
  rises = []
  prices.each_with_index do |num, idx|
    if prices[idx + 1]
      if num < prices[idx + 1]
        rose += 1
        falls << fell
        fell = 0
      elsif num > prices[idx + 1]
        fell += 1
        rises << rose
        rose = 0
      elsif num == prices[idx + 1]
        falls << fell
        rises << rose
        rose = 0
        fell = 0
      end
    else
      
    end
    rises << rose
    falls << fell
  end
  p "rises: #{rises}"
  max_falls = falls.max + 1
  max_rises = rises.max + 1
  p [max_falls, max_rises]
  [max_falls, max_rises].max
end

arr = [1, 2, 3]

p stock_runs(arr)