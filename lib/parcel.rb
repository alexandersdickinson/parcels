require('bigdecimal')

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
    volume = BigDecimal.new(self.volume(), 2)
    cost = volume / 4
  end
end