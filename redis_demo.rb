require 'redis'

r = Redis.new
r.hmset('humanoid', :alias, 'android', :property, 'bot', :color, 'blue', :language, 'French')

out = r.hgetall('humanoid')

puts out
