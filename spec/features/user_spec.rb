require_relative '../spec_helper'

feature "User login" do
  context "on sign in page" do
    it "encounters the required text boxes" do
      visit '/users/new'
      page.has_field?('Name', type: :name)
      page.has_field?('Email', type: :email)
      page.has_field?('Password', type: :password)
      page.has_field?('Confirm Password', type: :password_confirmation)
    end
  end
end
