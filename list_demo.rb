require 'redis'

r = Redis.new
r.rpush 'devnami', 'C++'
r.rpush 'devnami', ' java'
r.rpush 'devnami', 'Ruby'
r.rpush 'devnami', 'Python'
r.rpush 'devnami', 'Pearl'

puts r.lrange('devnami', 0,4)

