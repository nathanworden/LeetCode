def get_max_profit(stock_prices)
    return error if stock_prices.length <= 1
    min = stock_prices[0]
    max = stock_prices[1]
    big_diff = max - min
    stock_prices.each_with_index do |current, idx|
      next if stock_prices.length - 1 == idx
      if current < min
        min = current 
        max = stock_prices[idx + 1]
      end
      max = stock_prices[idx + 1] if stock_prices[idx + 1] > max
      big_diff = (max - min) if (max - min) > big_diff
      # p "min: #{min}, max: #{max}, diff: #{big_diff}"
    end
    big_diff
  end
  p get_max_profit([9, 7, 4, 1])