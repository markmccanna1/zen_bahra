require 'spec_helper'

describe 'Question' do

  it { should have_many(:answers)}
 
  before(:each) do
    @question = Question.new(:title => "first question", :body => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
  end

  describe 'title' do
    context "when a question is initialized" do
      it "should have a title" do
        expect(@question.title).to eq "first question"
      end
    end
  end

  describe 'title' do
    context "when a question is initialized" do
      it "should have a body" do
        expect(@question.body).to eq "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
      end
    end
  end

  describe 'rating default' do
    context "when a question is initialized" do 
      it "Should have a rating with a default value of 0" do
        expect(@question.rating).to eq 0
      end
    end
  end

end