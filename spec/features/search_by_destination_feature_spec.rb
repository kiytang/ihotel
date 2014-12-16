require 'rails_helper'

RSpec.feature "Search" do

  context 'Search by destination' do
    scenario 'find all rooms in London' do 
    # given there are two accomodations in London
      london = Location.create(street_address: 'Buckingham Palace', address_line_2: 'The Mall', town: 'Mayfair', city: "London", region: "Greater London")
      Accommodation.create(location: london, description: 'modern flat')
      Accommodation.create(location: london, description: 'country house')
    # and there are two other accomdations elsewhere
      tokyo = Location.create(street_address: 'Sushi', address_line_2: 'gin', town: 'Shinjuki', city: "Tokyo", region: "Tokyo Prefecture")
      Accommodation.create(location: tokyo, description: 'pod')
      los_angeles = Location.create(street_address: "Man Chinese Theatre", address_line_2: 'Sun set Boulevard', town: 'Holywood', city: "Los Angeles", region: "California")
      Accommodation.create(location: los_angeles, description: 'dojo')

    # when I visit the homepage 
      visit '/'
    # and I enter London into the destination field and hit search
      fill_in 'Destination', with: 'London' 
      click_button 'Search'
    # then I should see the two accomations.
      expect(page).to have_content('modern flat')
      expect(page).to have_content('country house')
    end
  end


end