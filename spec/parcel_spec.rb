require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of the package') do
      test_parcel = Parcel.new(3, 4, 5)
      expect(test_parcel.volume()).to(eq(60))
    end
  end
  
  describe('#cost_to_ship') do
    it('returns the cost of shipping the package based on the volume') do
      test_parcel = Parcel.new(3, 4, 5)
      expect(test_parcel.cost_to_ship()).to(eq(15))
    end
  end
end