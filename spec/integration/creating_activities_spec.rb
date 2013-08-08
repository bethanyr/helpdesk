require 'spec_helper.rb'

feature "Creating Activities" do

  scenario "Creating an activity" do
    ticket = FactoryGirl.create(:ticket, :name => "Wireless not working")
    visit '/'
    click_link "Wireless not working"
    click_link "New Activity"
    fill_in "Subject", :with => "My wireless is not working"
    fill_in "Description", :with => "It has not been working since 10am this morning."
    fill_in "Type", :with => "email"
    fill_in "From", :with => "Bethany Rentz"
    fill_in "Email", :with => "ticket@test.com"
    click_button "Create Activity"
    page.should have_content("Activity has been created.")
    within("#activity") do
      page.should have_content("My wireless is not working")
    end
  end
end
