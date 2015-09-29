class Contact
  attr_reader(:first_name, :last_name, :company, :company_title)

  @@contacts = []

  define_method(:initialize) do |attributes|
    @first_name=attributes.fetch(:first_name)
    @last_name=attributes.fetch(:last_name)
    @company=attributes.fetch(:company)
    @company_title=attributes.fetch(:company_title)
  end

  define_singleton_method(:clear) do
      contacts = []
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:list) do
    @@contacts
  end
end
