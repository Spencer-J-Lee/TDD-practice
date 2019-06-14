def stock_picker(prices)
    best_profit = 0
    best_days   = nil

    prices.each_with_index do |buy_price, buy_day|
        prices.each_with_index do |sell_price, sell_day|
            if sell_day > buy_day
                profit = sell_price - buy_price

                if profit > best_profit
                    best_days   = [buy_day, sell_day]
                    best_profit = profit
                end
            end
        end
    end

    best_days
end