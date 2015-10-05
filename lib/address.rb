class Address
  attr_reader(:street, :city, :state, :zipcode, :address_type)

  @@address = []
  define_method(:initialize) do |attributes|
      @street=attributes.fetch(:street)
      @city=attributes.fetch(:city)
      @state=attributes.fetch(:state)
      @zipcode=attributes.fetch(:zipcode)
      @address_type=attributes.fetch(:address_type)
  end

  define_singleton_method(:clear) do
    @@address = []
  end

  define_method(:save) do
    @@address.push(self)
   end

  define_singleton_method(:address) do
    @@address
  end
end
