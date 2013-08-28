require 'database_cleaner'
require_relative '../spec_helper'
DatabaseCleaner.strategy = :truncation

feature "User login" do
  
  context "on sign in page" do
    
    # it "encounters the required text boxes" do
    #   visit '/users/new'
    #   page.has_field?('Name', type: :name)
    #   page.has_field?('Email', type: :email)
    #   page.has_field?('Password', type: :password)
    #   page.has_field?('Confirm Password', type: :password_confirmation)
    # end

    it "should sign in correctly", :js => true do
      visit(new_user_path)
      save_and_open_page
      fill_in 'user_name', :with => 'jer'
      fill_in 'user_email', :with => 'j@l.com'
      fill_in 'user_password', :with => '5monkeys'
      fill_in 'user_password_confirmation', :with => '5monkeys'
      click_button('create_user')
    end
  end
end

DatabaseCleaner.clean
