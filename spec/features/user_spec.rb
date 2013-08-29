require 'database_cleaner'
require_relative '../spec_helper'
DatabaseCleaner.strategy = :truncation

feature "User gets to signup page" do
  
  before(:each) do
    visit new_user_path
  end

  scenario "sign up form present", :js => true do
    expect(page).to have_css('form')
  end

  scenario "user able to sign up", :js => true do
    fill_in 'user_name', :with => 'jer'
    fill_in 'user_email', :with => 'j@l.com'
    fill_in 'user_password', :with => '5monkeys'
    fill_in 'user_password_confirmation', :with => '5monkeys'
    click_button 'create_user'
  end
end

feature "User signin" do

  before(:each) do
    visit questions_path 
  end

  scenario "sign in form is present", :js => true do
    expect(page).to have_css('#login_form')
  end
    
  scenario "user can sign in" do   
    fill_in 'email', :with => 'j@l.com'
    fill_in 'password', :with => '5monkeys'
    click_button 'login'
  end
end

DatabaseCleaner.clean
