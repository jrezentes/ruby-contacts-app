require('rspec')
require('phone_number')

describe('Phone_number') do
  before() do
    Phone_number.clear()
  end

  describe('#number') do
    it('it returns an number to us') do
      test_number =  Phone_number.new(:number=>"919-446-7500", :number_type=>"Cell")
      expect(test_number.number()).to(eq("919-446-7500"))
    end
  end

  describe('#number_type') do
    it('it returns an number type to us') do
      test_number =  Phone_number.new(:number=>"919-446-7500", :number_type=>"Cell")
      expect(test_number.number_type()).to(eq("Cell"))
    end
  end

  describe('#save') do
    it('it saves phone info to the class variable contact_number') do
      test_number =  Phone_number.new(:number=>"919-446-7500", :number_type=>"Cell")
      test_number.save()
      expect(Phone_number.phone_number()).to(eq([test_number]))
    end
  end
end
