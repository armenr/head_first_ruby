class Animal

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
  if value <= 0
    raise "You must specifay a real (nonzero) age, please."
  end
    @age = value
  end

  def talk
    puts "#{@name} says WOOF!"
  end

  def move(destination)
    puts "#{@name} runs to #{destination}"
  end

  def report_age
    puts "#{name} is #{age} years young."
  end

end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{age}."
  end
end

class Bird < Animal
  def talk
    puts "#{name} says MEOW!"
  end
end

class Cat < Animal
  def talk
    puts "#{name} says MEOW!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    #puts "#{@name} runs to #{destination}" -- replaced below
    super # ^^ pulls this from ANIMAL superclass
  end
end

## Important note about inheritance below

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4

rex = Dog.new
rex.name = "Rex"
rex.age = 2

puts lucy.to_s, rex.to_s
# --> Produces #<Dog:0x007fb06991b7b8>
               #<Dog:0x007fb06991b678>
# before adding the to_s override on class "Dog"
# AFTER to_s override on "Dog", we get
#Lucy the dog, age 4.
#Rex the dog, age 2.
