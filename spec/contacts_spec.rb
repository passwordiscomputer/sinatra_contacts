require('rspec')
require('contacts')
require('pry')

  describe('.all') do
      it("list is empty") do
        expect(Contacts.all()).to(eq([]))
      end
  end

  describe('contacts') do
    it("returns first name") do
      f_name = Contacts.new({:first_name=> "Bob", :last_name=> "Jones", :job_title=> "code monkey", :company=> "Bad A@# Codes", :contact_type=> "business"})
      expect(f_name.first_name()).to(eq("Bob"))
    end
  end

  describe('contacts') do
    it("returns a list of contacts") do
      f_name = Contacts.new({:first_name=> "Bob", :last_name=> "Jones", :job_title=> "code monkey", :company=> "Bad A@# Codes", :contact_type=> "business"})
      f_name.save
      expect(Contacts.all()).to(eq([f_name]))
    end
  end
