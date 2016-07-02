class Person
  attr_accessor :name

  def introduction
    puts "Hello my name is #{name}"
  end
end

person = Person.new
person.name = 'Peter'
puts person.introduction == 'Hello my name is Peter'
