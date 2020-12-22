def get_max_profit(stock_prices)
    max_profit = 0
    (0...stock_prices.length).each do |outer_time|
        (0...stock_prices.length).each do |inner_time|
            earlier_time = [outer_time, inner_time].min
            later_time = [outer_time, inner_time].max
            earlier_price = stock_prices[earlier_time]
            later_price = stock_prices[later_time]
            potential_profit = later_price - earlier_price
            max_profit = [max_profit, potential_profit].max
        end
    end
    max_profit
end

arr = [1, 5, 3, 2]

p get_max_profit(arr)

# The Problem with this approach is that it is too slow. It runs in O(n^2) time. ALSO its not correct because we won't ever report a negative profit.