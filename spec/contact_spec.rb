require('rspec')
require('contact')
require('address')
require('email')
require('phone_number')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#first_name') do
    it("returns a first name of the Contact object") do
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    expect(test_contact.first_name()).to(eq("Joseph"))
    end
  end

  describe('#last_name') do
    it("returns a last name of the Contact object") do
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    expect(test_contact.last_name()).to(eq("Rezentes"))
    end
  end

  describe('#company') do
    it("returns the company of the Contact object") do
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    expect(test_contact.company()).to(eq("Rolemodel Software"))
    end
  end

  describe('#company_title') do
    it("returns company title of the Contact object") do
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    expect(test_contact.company_title()).to(eq("Junior Developer"))
    end
  end

  describe('#save') do
    it("saves our Contact objects passed in") do
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    test_contact.save()
    expect(Contact.list()).to(eq([test_contact]))
    end
  end

  describe('#id') do
    it("returns proper id for a contact") do
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    expect(test_contact.id()).to(eq("Joseph Rezentes"))
    end
  end

  describe('.find') do
    it("finds proper contact using the id") do
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end

  describe('.clear') do
    it("clears our contact list") do
      test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
      test_contact.save()
      expect(Contact.clear()).to(eq([]))
    end
  end

  describe('#set_address') do
    it("lets us add an address to our contact") do
    test_address = Address.new({:street=>"2904 Meadowview Ct.", :city=>"Apex", :state=>"NC", :zipcode=>"27539",  :address_type=>"Home"})
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    test_contact.set_address(test_address)
    expect(test_contact.contact_address()).to(eq([test_address]))
    end
  end

  describe('#set_email') do
    it("lets us add an email to our contact") do
    test_email = Email.new({:email=>"josephrezentes@gmail.com", :email_type=>"Work"})
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    test_contact.set_email(test_email)
    expect(test_contact.contact_email()).to(eq([test_email]))
    end
  end

  describe('#set_phone') do
    it("lets us add a phone to our contact") do
    test_phone = Phone_number.new({:number=>"919-446-7500", :number_type=>"Cell"})
    test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
    test_contact.set_phone(test_phone)
    expect(test_contact.contact_phone()).to(eq([test_phone]))
    end
  end
end
