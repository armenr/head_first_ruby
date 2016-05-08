# Superclass of type Vehicle
class Vehicle

  attr_accessor :odometer
  attr_accessor :gas_used

  def accelerate
    puts "Floor it, bro!"
  end

  def sound_horn
    puts "Beep beep!"
  end

  def steer
    puts "Turn front 2 wheels."
  end

  def mileage
    return @odometer / @gas_used
  end

end


# Subclass car
class Car < Vehicle
end

car = Car.new
car.odometer = 11432
car.gas_used = 366

puts "Lifetime MPG:"
puts car.mileage


# Subclass truck
class Truck < Vehicle

  attr_accessor :cargo

  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo = contents
  end
end

pickup = Truck.new
pickup.load_bed("259 bouncy balls")
puts "The pickup is carrying #{pickup.cargo}"


#Subclass motorcycle
class Motorcycle < Vehicle
  def steer
    puts "Turn the motorcycle's front wheel."
  end
end

motorcycle = Motorcycle.new
motorcycle.accelerate
motorcycle.steer
