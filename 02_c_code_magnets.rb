class Blender
  def close_lid
    puts "Sealed tight!"
  end

  def blend(speed)
    puts "Spinning on #{speed} setting."
  end
end

margarita = Blender.new
margarita.close_lid
margarita.blend("high")
