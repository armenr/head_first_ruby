#class Dog
  # Variables local scope VS instance scope
  # def make_up_name
  #   name = "Vardeeg"  # <-- store a name
  # end  #<--- name drops out of scope as soon as the method ends
  #
  # def talk(name)
  #   puts "#{name} barks!" #<-- this variable, defined ^^ there, no longer exists
  # end
#
#   def make_up_name
#     @name = "Vardeeg"
#   end
#
#   def talk(name)
#     puts "#{@name} says Bark!"
#   end
#
#   def move(destination)
#     puts "#{@name} runs to the #{destination}."
#   end
#
#   def make_up_age
#     @age = "5"
#   end
#
#   def report_age
#     puts "#{@name} is #{@age} years old."
#   end
#
# end
#
# dog1 = Dog.new
# dog1.make_up_name
# dog1.move("yard")
# dog1.make_up_age
# dog1.report_age

# This will not work --> you can't access instance variables from code outside of your class
# THIS is an example of encapsulation
#fido = Dog.new
#fido.@name= ""
#fido.@age = -1
#fido.report_age

class Dog

  # ability to access name variable & write a new value to it - writer accessor
  def name=(new_name)
    @name = new_name
  end

  # ability to read the value from @name
  def name
    @name
  end

  def age=(new_age)
    @age = new_age
  end

  def age
    @age
  end

  def report_age
    puts "#{@name} the dog, is #{@age} years old, dawg."
  end

end

fido = Dog.new      # instantiate fido instance of Dog class
fido.name = "Fido"  # set @name for Dog.fido
fido.age = 2        # set @age for Dog.fido
rex = Dog.new       # instantiate rex instance of Dog class
rex.name = "Rex"    # set @name for Dog.rex
rex.age = 14        # set @age for Dog.rex
fido.report_age
rex.report.age


class Bird
  def talk(name)
    puts "#{name} chirps!"
  end

  def move(name, destination)
    puts "#{name} flies to the #{destination}."
  end
end

class Cat
  def talk(name)
    puts "#{name} meows, muufucka!"
  end

  def move(name, destination)
    puts "#{name} pounces on the #{destination}"
  end
end
