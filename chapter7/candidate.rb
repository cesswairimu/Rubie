class Candidate
attr_accessor :name,:age, :occupation, :hobby, :birth_town
def initialize(name, age, occupation, hobby, birth_town)
self.name = name
self.age = age
self.occupation = occupation
self.hobby = hobby
self.birth_town = birth_town
end
end
def print_summary(candidate)
  puts "Candidate: #{candidate.name}"
puts "Age: #{candidate.age}"
puts "Occupation: #{candidate.occupation}"
puts "Hobby: #{candidate.hobby}"
puts "BirthPlace: #{candidate.birth_town}"
end
candidate = Candidate.new("Kheri", 24, "Journalist", "Travelling", "Nakuru")
print_summary(candidate)
