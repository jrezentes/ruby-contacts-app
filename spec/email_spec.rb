require('rspec')
require('email')

describe('Email') do
  before() do
    Email.clear()
  end

  describe('#email') do
    it('it returns an email to us') do
      test_email =  Email.new(:email=>"josephrezentes@gmail.com", :email_type=>"Work")
      expect(test_email.email()).to(eq("josephrezentes@gmail.com"))
    end
  end

  describe('#email_type') do
    it('it returns an email_type to us') do
      test_email =  Email.new(:email=>"josephrezentes@gmail.com", :email_type=>"Work")
      expect(test_email.email_type()).to(eq("Work"))
    end
  end

  describe('#save') do
    it('it saves an email to the class variable contact_email') do
      test_email =  Email.new(:email=>"josephrezentes@gmail.com", :email_type=>"Work")
      test_email.save()
      expect(Email.email_address()).to(eq([test_email]))
    end
  end
end
