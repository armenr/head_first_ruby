# Get My Number Game
# Written by: An Ass-Hat IV

# Greet our friend & get their name
puts "Welcome to 'this simplistic exercise of a game!'"
print "What's your name? "
input = gets.chomp
puts "Welcome, #{input}"

# Store a random number for the player to guess
puts 'I\'ve got a random number between 1 and 100.'
puts 'Can you guess it?'

# +1 to bring us into 1-100 range, instead of 0-99
target = rand(100) + 1
