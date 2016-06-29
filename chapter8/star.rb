class CelestialBody
  attr_accessor :type, :name
end

bodies = Hash.new do |key,value|
body = CelestialBody.new
body.type = 'planet'
hash[key] = body
body
end
# bodies['Mars']
#bodies['Venus'].name = Venus
#bodies['Jupiter'].name = Jupiter
# bodies ['Europa']
 altair = CelestialBody.new
 altair.name = 'Altair'
 altair.type ='star'
 polaris = CelestialBody.new
 polaris.type ='star'
 polaris.name = 'Polaris'
 vega =  CelestialBody.new 
 vega.type ='star'
 vega.name = 'Vega'
 puts altair.name, polaris.name, vega.name

