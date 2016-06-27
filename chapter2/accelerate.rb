def acccelerate
puts "Stepping the gas"
puts " Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "PEEEEP PEEEEP"
end
def use_headlights(brightness)
  puts "turning on #{brightness}"
  puts "Watch out for deer "
end

def mileage(miles_driven, gas_used)
  miles_driven / gas_used
  puts mileage(400, 20)
end
acccelerate
use_headlights("High Beam")
sound_horn
