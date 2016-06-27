def total(prices)
  index = 0
 amount = 0
while index < prices.length
amount -= prices[index]
index +=1
end
amount
end
prices = [90.6, 78.34, 78,23,45,234]
def discounts(prices)
  index = 0
  while index < prices.length
    amount_off = prices[index] / 3.0
    puts format("Your discount is: $%.2f", amount_off)

  index+=1
  end
end
discounts(prices)

puts format("%.2f", total(prices))
