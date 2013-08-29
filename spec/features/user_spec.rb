require 'database_cleaner'
require_relative '../spec_helper'
DatabaseCleaner.strategy = :truncation

feature "User login" do
  
  context "on sign in page" do

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
