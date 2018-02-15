require('rspec')
require('contacts')
require('pry')

  describe('.all') do
      it("list is empty") do
        Contacts.clear
        expect(Contacts.all()).to(eq([]))
      end
  end

  describe('contacts') do
    it("returns first name") do
      contact1 = Contacts.new({:first_name=> "Bob", :last_name=> "Jones", :job_title=> "code monkey", :company=> "Bad A@# Codes", :contact_type=> "business"})
      expect(contact1.first_name()).to(eq("Bob"))
    end
  end

  describe('contacts') do
    it("returns a list of contacts") do
      contact1 = Contacts.new({:first_name=> "Bob", :last_name=> "Jones", :job_title=> "code monkey", :company=> "Bad A@# Codes", :contact_type=> "business"})
      contact1.save
      expect(Contacts.all()).to(eq([contact1]))
    end
  end

  describe('.find') do
    it ("finds an item based on its id") do
      Contacts.clear
      contact1 = Contacts.new({:first_name=> "Bob", :last_name=> "Jones", :job_title=> "code monkey", :company=> "Bad A@# Codes", :contact_type=> "business"})
      contact1.save
      contact2 = Contacts.new({:first_name=> "Bill", :last_name=> "Johnson", :job_title=> "senior developer", :company=> "Bad A@# Codes", :contact_type=> "business"})
      contact2.save

      expect(Contacts.find("Bob")).to(eq(contact1))
      expect(Contacts.find("Bill")).to(eq(contact2))
    end
  end
