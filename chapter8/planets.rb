class CelestialBody
  attr_accessor :name, :type
end
bodies = Hash.new do |hash, key|
body = CelestialBody.new
body.type = 'planet'
hash[key] = body
body
end
 bodies['Mars'].name = 'Mars'
bodies['Venus'].name =' Venus'
bodies['Jupiter'].name ='Jupiter'
 bodies ['Europa'].name = 'Europa'
 bodies ['Europa'].type = 'moon'

p bodies
