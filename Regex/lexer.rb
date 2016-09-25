puts "Hello Bunch, I want to identify your input"
puts "You might wonna put something here"
input = gets
  name = input.chomp
  puts "Your input was #{name}"
if name == " "
  puts "you input was a string"
else 
  "Your input was a number"
end

