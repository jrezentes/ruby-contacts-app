require('rspec')
require('contact')

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

  describe('.clear') do
    it("clears our contact list") do
      test_contact = Contact.new({:first_name=>"Joseph", :last_name=>"Rezentes", :company=>"Rolemodel Software", :company_title=>"Junior Developer"})
      test_contact.save()
      expect(Contact.clear()).to(eq([]))
    end
  end
end
