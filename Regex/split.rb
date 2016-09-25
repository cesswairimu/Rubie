puts "We want to split your input"
puts "input a list of items separated by commas"
input = gets
name = input.chomp
puts "Your input was #{name}"
puts "-------- now i will split your list according to commas--------"
cess = name.split(",")
puts"#{cess}"

