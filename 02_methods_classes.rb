def accelerate
  puts "Stepping on the gas"
  puts "Speeding up..."
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness)
  puts "Turning on #{brightness} headlights!"
  puts "Watch out for deer!"
end

sound_horn
accelerate
use_headlights("high-beam")




# Optional parameters sandbox/exercises
# Here, flavor is a default requirement, the others have default values set
def order_soda(flavor, size = "medium", quantity = 1)
  if quantity == 1
    plural = "soda"
  else
    plural = "sodas"
  end
  puts "#{quantity} #{size} #{flavor} #{plural}, coming right up!"
end

order_soda("orange")
order_soda("lemon-lime", "small", 2)
order_soda("grape", nil, 5)

# Arguments VS Parameters
def say_wassup(name) # <--- parameter
  puts "Wassup #{name}!" #<--- parameter
end

say_wassup("Mofo") #<--- here "Mofo" is an argument
