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

### Loops:
* 'unless' is the opposite of IF; its code won't execute unless a statement is false
* 'until' is the opposite of WHILE; its code executes repeatedly until a condition is true

### Classes:
* consider classes to be templates for new objects you wish to instantiate
* instance variables --> what objects "know"
* instance methods --> what objects do

### Methods:
* method names ending in "?" usually return booleans, and are not treated specially by the interpreter
* method names ending in "!" are expected to return "surprising" values, and are not treated specially be the interpreter
* method names ending in "=" are use as attribute writers, but are treated specially by the interpreter
* required method parameters must be ordered before optional method parameters - pass 'nil' to use default optional param value 
