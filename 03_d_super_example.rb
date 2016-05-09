class Person

  def greet_by_name(name)
    "Hello, #{name}!"
  end

end

class Friend < Person

  def greet_by_name(name)
    basic_greeting = super # same as super(name)
    "#{basic_greeting} Glad to see you, my friend!"
  end

end

puts Friend.new.greet_by_name("Bert")
