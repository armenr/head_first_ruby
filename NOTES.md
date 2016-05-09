## Here be notes I take.
*Ruby is an interpreted language. Yay.*

### Basics:
* puts = newline @ end of string
* print = no newline @ end of string
* instance variable: stays within an object and stores data about that object
* attribute: another name for a piece of data about an object, stored in an instance variable
* local variable: stores data within a method, disappears when the method returns
* accessor method: particular kind of instance method, the main purpose of which is to read or write an instance variable
* symbol: used in Ruby programs to refer to things whose names don't change (like methods)


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
    * the name of an attribute reader method should usually match the name of the instance variable it reads from (without the @ symbol, obviously)
        * ```
            def tail_length
              @tail_length
             end
          ```
    * the name of an attribute writer method should usually match the name of the instance variable it writes to, with and "=" symbol on the end of the name
        * ```
            def tail_length=(value)
              @tail_length = value
             end
          ```
          
    * SO, rather than write accessors (reader/writer) by hand for each attribute, what can we do?
    
    | write this          | Ruby auto-defines these                      |
    |---------------------|----------------------------------------------|
    | attr_writer :name   | def name=(new_value)   @name = new_value end |
    | attr_reader :name   | def name   @name end                         |
    | attr_accessor :name | both methods in row 2 + row 3                |

        attr_accessor :name, :age 
       * Defines 4 methods at once (reader/writer pair for each instance variable
  * if you want to shortcut the code, but validate data passed to a method, you can delegate attr_reader, but write your own writer methods with validation constraints
        
### Let's talk about inheritance
* allow for multiple subclasses to inherit methods from a single superclass - to avoid maintenance issues & mass refactors
* subclasses inherit instance methods from superclasses, but they do *not* inherit instance variables!
    * instance variables belong to the object, not the class
    * inherited instance methods create the instance variable on the OBJECT, when the instance method is called
    * in many other OO languages, instance variables are declared on the class, but not so in Ruby - worth knowing
    * if a subclass uses the same instance variable name (for a different accessor method/attribute than its parent) as its superclass, it will overwrite the attribute in the superclass without being smart enough to know its addressing something totally different
    * variable names should match attribute accessor names in all classes
* if a superclass's behavior isn't what you need in the subclass, inheritance permits method overrides
    * you can replace the inherited methods from the superclass with subclass-specific methods
    * ruby will recurse upwards when a method call is made, starting from the subclass up to the superclass - so if you've overriden a superclass method in a subclass, it will find it there and execute it without moving up the inheritance tree to find the method you've called
* as a general practice, most Rubyists don't go deeper than 2 or 3 levels of inheritance 
    * --> superclass (vehicle) --> subclass (car) --> subclass of subclass (drag_racer)
  * when you define a method override for a subclass, you can use the "super" keyword which will call back to the method in the superclass - the superclass's return value becomes the value of the super expression
    * super() calls the overriden method with NO arguments, even if the overriding method DID receive arguments
    * super calls the overriden method with the same arguments the overriding method recieved
* *EVERYTHING* inherits from the "Object" superclass - ergo, "everything in Ruby is an object"

### Useful methods for objects & things
* to_s - converts an object to a string for printing
* inspect - converts an object to a debug string
* class - tells you which class an object is an instance of
* methods - tells you what instance methods an object has
* instance_variables - prints list of an object's instance variables
