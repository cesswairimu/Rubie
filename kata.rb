primes = []
def prime_numbers(n)
  i = 2
  while @primes.size < n do
    @primes << i if is_prime?(i)
    i += 1
  end
  @primes
end

def is_prime?(n)
  @primes.each { |prime| return false if n % prime == 0 }
  true
end
