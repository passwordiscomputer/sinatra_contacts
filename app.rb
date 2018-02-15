require('sinatra')
require('sinatra/reloader')
also_reload('lib/**.*.rb')
require('./lib/contacts')
require('./lib/address')
require('pry')

get('/') do
  @list = Contacts.all()
  erb(:home)
end

post('/contacts') do
  # attributes = {:first_name=> params.fetch("first_name"), :last_name=> params.fetch("last_name"), :job_title=> params.fetch("job_title"), :company=> params.fetch("company"), :contact_type=> params.fetch("contact_type")}
  contact = Contacts.new(params)
  contact.save

  @list = Contacts.all()
  #binding.pry
  erb(:contacts)
end

get('/contacts/:first_name') do
  @contact = Contacts.find(params[:first_name])
  @address_list = @contact.address_list
  #binding.pry
  erb(:contact_info)
end

post('/contacts/:first_name') do
  @contact = Contacts.find(params[:first_name])
  #binding.pry
  address = Address.new(params)
  @contact.add_address(address)
  @address_list = @contact.address_list

  erb(:contact_info)
end
