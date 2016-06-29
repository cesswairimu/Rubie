class CelestialBody
  attr_accessor :type, :name
end
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

