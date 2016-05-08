class Dog

  attr_accessor :name, :age

  def report_age
    puts "#{@name} the dog, is #{@age} years old, dawg."
  end

  def talk
    puts "#{name} barks!"
  end

  def move
    puts "#{name} runs to the #{destination}."
  end

end

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
