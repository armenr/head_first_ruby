## Here be notes I take.
*Ruby is an interpreted language.*

### Basics:
* puts = newline @ end of string
* print = no newline @ end of string

### Interpolation:
* you can put ruby expressions inside of #{...} notation, not just variable substitutions
* puts remaining_guesses.to_s + 'guesses left.' --> explicit string conversion method call circumvented with interpolation --> puts "#{remaining_guesses} guesses left."

### Method notes:
* when using something.to_i, you don't have to chomp - all non-numeric characters are ignored
* use 'inspect' & 'p' methods to view debug output for Ruby objects
