class Phone_number
  attr_reader(:number, :number_type)

  @@contact_number = []
  define_method(:initialize) do |attributes|
    @number=attributes.fetch(:number)
    @number_type=attributes.fetch(:number_type)
  end

  define_method(:save) do
    @@contact_number.push(self)
  end

  define_singleton_method(:phone_number) do
    @@contact_number
  end

  define_singleton_method(:clear) do
    @@number = []
  end

end
