require 'spec_helper'

describe 'Question' do
  before(:each) do
    @question = Question.new(:title => "first question", :body => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
  end

  it "should have a title" do
    @question.title.should eq ("first question")
  end

  it "should have a body" do
    @question.body.should eq ("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
  end

  it "Should have a rating with a default value of 0" do
    @question.rating.should eq (0)
  end
end