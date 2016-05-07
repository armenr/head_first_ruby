# Get My Number Game
# Written by: An Ass-Hat IV

# Greet our friend & get their name
puts "Welcome to 'this simplistic exercise of a game!'"
print "What's your name? "
input = gets.chomp
puts "Welcome, #{input}!"

# Store a random number for the player to guess
# stylistically, is it better to escape & single quote, or to use doubles and not escape?
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"

# +1 to bring us into 1-100 range, instead of 0-99
target = rand(100) + 1

# Track # of guesses - initialize the variable with value 0
num_guesses = 0

# Track whether the player has guessed correctly
guessed_it = false

# Replace while num_guesses <= && guessed_it = false w/ until loop & OR logic
until num_guesses == 10 || guessed_it

  puts "You've got #{10 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

  if guess < target
    puts 'Oops. Your guess was LOW.'
  elsif guess > target
    puts 'Whoops. Your guess was too HIGH.'
  elsif guess == target
    puts 'Holy shit! You nailed it!'
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end

end

# If player ran out of turns, tell them what the number was, and call them stupid.
# Substitute if_not with unless. YAY Legibility.
unless guessed_it
  puts "Sorry, dude. You didn't get my number. (It was #{target}). LOLCopter, you dumbass."
end
