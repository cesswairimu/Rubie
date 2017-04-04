require 'yaml/store'

User = Struct.new :f_name, :l_name

puts 'Enter your first name'
input = gets
f_name = input.chomp

puts 'Enter your last name'
input = gets
l_name = input.chomp


user = [User.new( f_name,l_name )]

store = YAML::Store.new "test.store"

store.transaction do
  store["user"] = user
  store["greeting"] = { "hello" => "world" }
end
