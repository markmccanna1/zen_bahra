require 'database_cleaner'
require 'spec_helper'
DatabaseCleaner.strategy = :truncation

feature "User homepage" do
  
  context "on user homepage" do

    it "should show user's name", :js => true do
      user = User.create(:name => "micah", :email => "m@g.com", :password => "password")
      visit user_path(user)
      page.should have_content("Welcome micah")
    end

    it "should have button for new question" do
      user = User.create(:name => "micah", :email => "m@g.com", :password => "password")
      visit user_path(user)
      find_link('Ask Question')
    end

  end

end