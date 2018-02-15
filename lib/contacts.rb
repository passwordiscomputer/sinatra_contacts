#!/usr/bin/ruby

class Contacts
  @@list = []
  attr_accessor :first_name, :last_name, :job_title, :company, :contact_type, :address_list

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
    @address_list = []
  end

  def add_address(address)
    @address_list.push(address)
  end

  def save()
    @@list.push(self)
  end

  def self.all()
    @@list
  end

  def self.clear()
    @@list = []
  end

  def self.find(first_name)
    @@list.each do |item|
      if item.first_name == first_name
        return item
      end
    end
  end

end
