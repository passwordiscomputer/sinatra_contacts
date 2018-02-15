#!/usr/bin/ruby

class Contacts
  @@list = []
  attr_accessor :first_name, :last_name, :job_title

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
  end

  def save()
    @@list.push(self)
  end

  def self.all()
    @@list
  end


end
