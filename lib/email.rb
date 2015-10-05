class Email
  attr_reader(:email, :email_type)

  @@contact_email = []
  define_method(:initialize) do |attributes|
    @email=attributes.fetch(:email)
    @email_type=attributes.fetch(:email_type)
  end

  define_method(:save) do
    @@contact_email.push(self)
  end

  define_singleton_method(:clear) do
    @@contact_email = []
  end

  define_singleton_method(:email_address) do
    @@contact_email
  end
end
