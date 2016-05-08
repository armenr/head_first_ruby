class Dog

  attr_reader :name, :age

  def name=(value)
    if name == ""
      raise "Name can't be blank!"
    else
      @name = value
    end
  end

  def age=(value)
    if value <= 0
      raise "An age of #{value} cannot be less than or equal to zero."
    else
      @name = value
    end
  end

  def talk
    puts "#{name} barks!"
  end

  def move
    puts "#{name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} the dog, is #{@age} years old, dawg."
  end

end
