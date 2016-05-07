def accelerate
  puts "Stepping on the gas"
  puts "Speeding up..."
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights!"
  puts "Watch out for deer!"
end

def mileage(miles_driven, gas_used)
  if gas_used == 0 # <--- Without this, a brand new car's mileage method would return an error (divide by 0)
    return 0.0    # <--- Return here prevents the rest of the method from running
  end
  miles_driven / gas_used # <--- the return here is implicit
end

trip_mileage = mileage(400, 12)
puts "You got #{trip_mileage} MPG on this trip, dawg!"

lifetime_mileage = mileage(11432, 366)
puts "This junker averages #{lifetime_mileage} MPG."

use_headlights
sound_horn
accelerate
use_headlights("high-beam")





#
# # Optional parameters sandbox/exercises
# # Here, flavor is a default requirement, the others have default values set
# def order_soda(flavor, size = "medium", quantity = 1)
#   if quantity == 1
#     plural = "soda"
#   else
#     plural = "sodas"
#   end
#   puts "#{quantity} #{size} #{flavor} #{plural}, coming right up!"
# end
#
# order_soda("orange")
# order_soda("lemon-lime", "small", 2)
# order_soda("grape", nil, 5)
#
# # Arguments VS Parameters
# def say_wassup(name) # <--- parameter
#   puts "Wassup #{name}!" #<--- parameter
# end
#
# say_wassup("Mofo") #<--- here "Mofo" is an argument
