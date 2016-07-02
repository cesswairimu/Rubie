require 'minitest/autorun'
require 'person'

class TestPerson < MiniTest::Test
def test_introduction
  person = Person.new
  person.name = 'Peter'
  assert(person.introduction == "Hello my name is Peter")
end
end


