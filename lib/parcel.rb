class Parcel
  def initialize(length, height, depth)
    @length = length
    @height = height
    @depth = depth
  end
  
  def volume()
    @length * @height * @depth
  end
  
  def cost_to_ship()
    self.volume() / 4
  end
end