require 'database_cleaner'
require 'spec_helper'
DatabaseCleaner.strategy = :truncation

feature "Question creation" do
  
  context "on question creation page" do

    it "should successfully create a question", :js => true do
      visit(new_question_path)
      fill_in 'question_title', :with => 'testing'
      fill_in 'question_body', :with => 'Aenean lacinia bibendum nulla sed consectetur.'
      click_button('Create Question')
    end

  end

end
