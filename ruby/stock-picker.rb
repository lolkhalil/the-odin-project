def stock_picker(stocks)
  buySell = []
  profit = 0
  stocks.each_with_index do |stock1, index1|
    stocks.each_with_index do |stock2, index2|
      if (index2 > index1)
        # Checks for the best profit
        if (stock2 - stock1 > profit)
          profit = stock2 - stock1
          buySell[0] = index1
          buySell[1] = index2
        end
      end
    end
  end

  return buySell
end

print stock_picker([17,3,6,9,15,8,6,1,10])