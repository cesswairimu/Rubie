def total(prices)
  index = 0
 amount = 0
while index < prices.length
amount += prices[index]
index +=1
end
amount
end
prices = [90.6, 78.34, 78,23,45,234]
puts format("%.2f", total(prices))

