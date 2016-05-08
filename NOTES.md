## Here be notes I take.
*Ruby is an interpreted language. Yay.*

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
* methods without parameters don't need method_name() parantheses at the end
* methods with multiple parameters should definitely include parameters, even though excluding them doesn't break shit (typically)
* required method parameters must be ordered before optional method parameters - pass 'nil' to use default optional param value 
* arguments vs parameters: you define and use parameters WITHIN a method definition & provide arguments with method calls
    * parameters -> defined within method definitions
    * arguments -> passed to method calls where parameters are defined
* plainly stated -> return values are cool, bruh
    * the value of the *last* expression evaluated within a given method automatically becomes that method's return value

### Objects & Classes
*If classes are cookie cutters, objects are the cookies they make.*

* objects keep a sat of data, and the methods that operate on that data, in one place
* a class is a blueprint for making objects - the class describes what that objects knows about itself, and what that object does
    * instance variables -> what an object knows about itself
        * variables that belong to one object
        * represent the object's state
        * can have different values for each instance of that class
    * instance methods -> things an object does
        * methods you call directly on that object
        * have access to the object's instance variables and use them to change their behavior based on values in those variables
* an *instance* of a class is an object that was made using that class (1 class:many instances)
* Example "dog" class

| class type:                 	|            DOG           	|
|-----------------------------	|:------------------------:	|
| instance variables (state)  	| name,  age               	|
| instance methods (behavior) 	| talk,  move,  report age 	|

### Variables
* local variables - local to the current scope (usually the current method) - when the current scope ends, local variables cease to exist
    * "variable_name"
* instance variables - tied to a particular object instance; data written to an object's instance variables stays with that object, getting removed from mem only when the object is removed
    * "@variable_name"
* encapsulation prevents other parts of the program from directly accessing or changing an object's instance variables - this is code sanity/safety
* ACCESSOR METHODS write values to the instance variables and read them back out again for you - they also extend to validate or reject bad values passed in
    * def my_attribute=(new_value) <-- "=" is considered part of the method name (special treatment!)
    
