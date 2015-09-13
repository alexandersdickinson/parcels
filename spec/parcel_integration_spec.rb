require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path') do
  it('gives the user the volume of their parcel', {:type => :feature}) do
    visit('/')
    fill_in('length', :with => 3)
    fill_in('height', :with => 4)
    fill_in('depth', :with => 5)
    click_button('Submit')
    expect(page).to(have_content("Your parcel is 60 cubic centimeters."))
  end
  
  it('gives the user the cost of their parcel', {:type => :feature}) do
    visit('/')
    fill_in('length', :with => 3)
    fill_in('height', :with => 3)
    fill_in('depth', :with => 3)
    click_button('Submit')
    expect(page).to(have_content("Shipping will cost $6.75."))
  end
end