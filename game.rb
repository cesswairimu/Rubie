puts "Welcome to Cess's little game buddy!!!"

puts 'Whats your name dear?'
input = gets
name = input.chomp
puts "Welcome once again #{name}!!"

puts "I have a number between 1 and 50"
puts "Would you be kind enough to guess it?"
target = rand(50) + 1

guesses = 0
guessed = false
until guesses == 10 || guessed 
  puts "U have #{10 - guesses} guesses left buddy"
  print "Make a guess: "
  guess = gets.to_i
  guesses += 1

  if guess > target
    puts "Your guess is too high buddy!"
  elsif guess < target
    puts "Your guess is too low buddy!"
  elsif target == guess
    puts "Wow  WOW!! Well done  #{name}"
    puts "You have guessed my number correctly in #{guesses} guesses"
    guessed = true
  end
end
unless guessed 
  puts"Sorry #{name}!! U r a loser today!! my number was #{target}"
end



