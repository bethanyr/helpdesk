require 'spec_helper'
feature 'Create Tickets' do
  scenario "user can create a ticket" do
    visit '/'
    click_link 'New Ticket'
    fill_in 'Name', :with => "ticket 1"
    fill_in 'Description', :with => "Need assistance with my tickets."
    click_button 'Create Ticket'
    page.should have_content('Ticket has been created.')
  end
end
