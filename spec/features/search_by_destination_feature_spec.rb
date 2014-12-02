require 'rails_helper'

RSpec.feature "Search" do

  scenario 'Search by destination' do
    given_there_is_a_destination
    and_i_am_logged_in_as_a_user
    when_i_click_on_the_property
    then_the_property_details_should_appear
  end

  def given_there_is_a_destination
  end

  def and_i_am_logged_in_as_a_user
  end

  def when_i_click_on_the_property
  end

  def then_the_property_details_should_appear
    
  end
end