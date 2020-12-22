def get_max_profit(stock_prices)
    max_profit = 0
    stock_prices.each_with_index do |earlier_price, earlier_time|
        (stock_prices[earlier_time + 1..-1]).each do |later_price|
            potential_profit = later_price - earlier_price
            max_profit = [max_profit, potential_profit].max_profit
        end
    end
    max_profit
end