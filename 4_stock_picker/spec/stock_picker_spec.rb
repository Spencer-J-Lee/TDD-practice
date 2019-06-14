require 'rspec'
require 'stock_picker'

# Stock Picker
# Write a method that takes an array of stock prices (prices on days 0, 1, ...), 
# and outputs the most profitable pair of days on which to first buy the stock and then sell the stock. 
# Remember, you can't sell stock before you buy it!

describe 'stock_picker' do
    subject(:stock_prices) {
        [
            ['Day 1', 4],
            ['Day 2', 3],
            ['Day 3', 10],
            ['Day 4', 7],
            ['Day 5', 6],
        ]
    }

    describe 'stock_picker' do
        it "takes in an array as an argument" do
            expect(stock_picker(stock_prices)).to receive(stock_prices)
        end
    end
end