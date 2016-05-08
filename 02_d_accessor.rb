class MyClass

  # What follow here are accessor methods

  # Attribute writer method
  def my_attribute=(new_value)
    @my_attribute = new_value
  end

  # Attribute reader method
  def my_attribute
    @my_attribute
  end

end

# Example usage

my_instance = MyClass.new
my_instance.my_attribute = "a value"
puts my_instance.my_attribute
