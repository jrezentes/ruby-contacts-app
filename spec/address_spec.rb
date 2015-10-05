require('rspec')
require('address')

describe('Address') do
  before() do
    Address.clear()
  end

  describe('#city') do
    it('returns the city of the address') do
      test_address = Address.new({:street=>"2904 Meadowview Ct.", :city=>"Apex", :state=>"NC", :zipcode=>"27539", :address_type=>"Home"})
      expect(test_address.city()).to(eq("Apex"))
    end
  end


  describe('#street') do
    it('returns the street of the address') do
      test_address = Address.new({:street=>"2904 Meadowview Ct.", :city=>"Apex", :state=>"NC", :zipcode=>"27539", :address_type=>"Home"})
      expect(test_address.street()).to(eq("2904 Meadowview Ct."))
    end
  end

  describe('#state') do
    it('returns the state of the address') do
      test_address = Address.new({:street=>"2904 Meadowview Ct.", :city=>"Apex", :state=>"NC", :zipcode=>"27539", :address_type=>"Home"})
      expect(test_address.state()).to(eq("NC"))
    end
  end

  describe('#zipcode') do
    it('returns the zipcode of the address') do
      test_address = Address.new({:street=>"2904 Meadowview Ct.", :city=>"Apex", :state=>"NC", :zipcode=>"27539", :address_type=>"Home"})
      expect(test_address.zipcode()).to(eq("27539"))
    end
  end

  describe('#address_type') do
    it('returns the type of the address') do
      test_address = Address.new({:street=>"2904 Meadowview Ct.", :city=>"Apex", :state=>"NC", :zipcode=>"27539", :address_type=>"Home"})
      expect(test_address.address_type()).to(eq("Home"))
    end
  end

  describe('#save') do
    it('lets us save a address') do
      test_address = Address.new({:street=>"2904 Meadowview Ct.", :city=>"Apex", :state=>"NC", :zipcode=>"27539", :address_type=>"Home"})
      test_address.save()
      expect(Address.address()).to(eq([test_address]))
    end
  end

end
