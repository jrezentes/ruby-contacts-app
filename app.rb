require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/contact")
require("./lib/email")
require("./lib/address")
require("./lib/phone_number")

get('/') do
  erb(:index)
end

get('/contacts') do
  @contacts = Contact.list()
  erb(:contacts)
end

get('/contacts/new') do
  erb(:contact_form)
end

post('/contacts') do

  first=params.fetch('first_name')
  last=params.fetch('last_name')
  company=params.fetch('company')
  company_title=params.fetch('company_title')
  street=params.fetch('street')
  city=params.fetch('city')
  state=params.fetch('state')
  zipcode=params.fetch('zipcode')
  address_type=params.fetch('address_type')
  phone_number=params.fetch('phone_number')
  phone_type=params.fetch('phone_type')
  email_type=params.fetch('email_type')
  email=params.fetch('email')

  contact = Contact.new({:first_name=>first, :last_name=>last, :company=>company, :company_title=>company_title})
  email = Email.new(:email=>email, :email_type=>email_type)
  phone = Phone_number.new(:number=>phone_number, :number_type=>phone_type)
  address = Address.new(:street=>street, :city=>city, :state=>state, :zipcode=>zipcode, :address_type=>address_type)
  contact.save()
  contact.set_email(email)
  contact.set_phone(phone)
  contact.set_address(address)
  erb(:success)
end

get('/contacts/:id') do
  @contact=Contact.find(params.fetch('id'))
  erb(:contact)
end

get('/contacts/:id/address/new') do
  erb(:new_address)
end
