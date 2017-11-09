def list_squared(m, n)
  (m..n).map do |num|
    divisors = Set.new((1..Math.sqrt(num)).select { |d| num % d == 0  })
    divisors += divisors.map { |d| num / d  } 

    sum_sq_divisors = divisors.map { |d| d * d  }.inject(:+)
    [num, sum_sq_divisors] if Math.sqrt(sum_sq_divisors) % 1 == 0
  end.compact

end
