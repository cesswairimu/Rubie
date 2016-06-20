#Guess my number name
#Written by: Cessito
puts "Welcome  to 'Get my Number!!!'"
puts "Bunch what's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name} !!"
#putting a new number for the user to guess
puts "I have a random number from 0 to 100"
puts "Can you guess it?"
target = rand(100) + 1
#Tracks the number of guesses a user has input
guesses_no = 0
#Track if a user has guessed correctly guess = false
guessed_it = false
until guesses_no == 10 || guessed_it
  puts "You have got #{ 10 - guesses_no} guesses left"
  print "Make a guess"
  guess = gets.to_i
  guesses_no += 1

  #compare the target to the guess
  #print a correct message
  if guess  < target
    puts "Oops you suck your guess too LOW"
  elsif guess > target
    puts "Yuck Bunch your guess too HIGH"
  elsif guess ==target
    puts "Good job, #{name} !!!"
    puts "You guessed my number in #{guesses_no} guesses!"
    guessed_it = true
  end
end
#If a player runs out of the number of guesses tell him the answer
unless guessed_it
  puts "You  dummy. You did not get my number. (It was #{target})"
end

