class Contact
  attr_reader(:first_name, :last_name, :company, :company_title)

  @@contacts = []

  define_method(:initialize) do |attributes|
    @first_name=attributes.fetch(:first_name)
    @last_name=attributes.fetch(:last_name)
    @company=attributes.fetch(:company)
    @company_title=attributes.fetch(:company_title)

    @address = []
    @email = []
    @phone_number = []
    @id = @first_name + ' ' + @last_name
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

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(identification.to_s())
        found_contact= contact
      end
    end
    found_contact
  end

  define_method(:set_address) do |address|
    @address.push(address)
  end

  define_method(:contact_address) do
    @address
  end

  define_method(:set_email) do |email|
    @email.push(email)
  end

  define_method(:contact_email) do
    @email
  end

  define_method(:set_phone) do |phone_number|
    @phone_number.push(phone_number)
  end

  define_method(:contact_phone) do
    @phone_number
  end
end
