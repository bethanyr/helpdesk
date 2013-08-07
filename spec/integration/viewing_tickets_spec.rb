require 'spec_helper'
feature 'View Tickets' do
  scenario "user can view all tickets" do
    ticket = FactoryGirl.create(:ticket, :name => "Ticket 1")
    visit '/'
    page.should have_content('Ticket 1')
  end
end
