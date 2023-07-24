def stock_picker(stock_array)
    result = {}
    keys = []

    stock_array.each_with_index do |amount_sell, index_sell|
        stock_array.each_with_index do |amount_buy, index_buy|
            if index_buy < index_sell && index_buy != index_sell && index_buy != 0 && index_sell != 0
                divide = amount_sell - amount_buy
                result[divide] = [index_buy, index_sell] unless divide == 0
                keys.push(divide)
            end
        end
    end
    puts result[keys.max]
end

def weekday(integer)
    case integer
    when 0
        print "Sunday"
    when 1
        print "Monday"
    when 2
        print "Tuesday"
    when 3
        print "Wednesday"
    when 4
        print "Thursday"
    when 5
        print "Friday"
    when 6
        print "Saturday"
    end
end

stock_prices = []
print "Enter stock prices in USD for "
while stock_prices.length < 8
    puts weekday(stock_prices.length)
    price = gets.chomp.to_i
    stock_prices.push(price) if price.integer?
end
puts stock_picker(stock_prices)