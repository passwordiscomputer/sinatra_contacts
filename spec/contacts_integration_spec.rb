require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('list of contacts', {:type => :feature}) do
  it ('returns the first name of the person after filling out the form') do
    visit('/')
    fill_in('first_name', :with => 'Bob')
    click_button('Go!')
    expect(page).to have_content('Bob')
  end
end
