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
    puts "#{@name} scurries to the #{destination}"
  end
end
