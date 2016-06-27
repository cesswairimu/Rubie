def total(prices)
  index = 0
  amount = 0
  while index < prices.length
    amount += prices[index]
    index +=2
  end
  amount
end

prices = [91.6, 78.34, 78,23,45,234]
puts format("%.3f", total(prices))

def refund(prices)
  index = 0
  amount = 0
  while index < prices.length
    amount -= prices[index]
    index += 1
  end
  amount 
end
puts format("%.2f", total(prices))

  def discounts(prices)
    index = 0
    while index < prices.length
      amount_off = prices[index] / 3.0
      puts format("Your discount is: $%.2f", amount_off)
      index += 1
    end
  end
  discounts(prices)

