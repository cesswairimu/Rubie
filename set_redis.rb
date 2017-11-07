require 'redis'

r: = Redis.new
r.set('moon', 'fruit')
foo = u.get('moon')
puts foo
