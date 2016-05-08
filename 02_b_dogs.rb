class Dog
  def talk
    puts "Bark!"
  end

  def move(destination)
    puts "Running to the #{destination}."
  end
end

fido = Dog.new
rex = Dog.new

fido.talk
rex.move("shitter")

class Bird
  def talk
    puts "Chirp!"
  end

  def move(destination)
    puts "Flying to #{destination}."
  end
end

class Cat
  def talk
    puts "Meow, muufucka!"
  end

  def move
    puts "Pouncing on #{destination}"
  end
end
