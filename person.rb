FILENAME = 'data.yaml'

class Person
  attr_accessor :name, :sname, :email

end
require 'yaml'
data = YAML::load(File.open(FILENAME))
puts data.first.name
puts data.last.name
puts data.last.sname
puts data.last.email
puts data.first.email
