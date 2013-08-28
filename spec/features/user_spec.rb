require_relative '../spec_helper'

feature "User login" do
  
  context "on sign in page" do
    
    # it "encounters the required text boxes" do
    #   visit '/users/new'
    #   page.has_field?('Name', type: :name)
    #   page.has_field?('Email', type: :email)
    #   page.has_field?('Password', type: :password)
    #   page.has_field?('Confirm Password', type: :password_confirmation)
    # end

    it "should sign in correctly" do
      visit '/users/new'
      save_and_open_page
      fill_in 'Name', :with => 'jer'
      fill_in 'Email', :with => 'j@l.com'
      fill_in 'Password', :with => '5monkeys'
      fill_in 'Confirm Password', :with => '5monkeys'
      click_button 'Create'
    end
  end
end
