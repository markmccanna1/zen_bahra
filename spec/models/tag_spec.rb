
require 'spec_helper'
require_relative "../../app/models/tag.rb"

describe Tag do
  let (:tag) {Tag.new(name: "tag_name", description: "description")}

  context '#initialize' do 
    it "has a name" do
      expect(tag.name).to eql "tag_name"
    end 

    it "has a description" do
      expect(tag.description).to eql "description"
    end

    it "cant have a nul name" do
      t = Tag.new
      expect(t.valid?).to be_false
    end

    it "cant have a nul description" do
      t = Tag.new
      expect(t.valid?).to be_false
    end
  end

  it { should have_many(:followers).through(:devotees)}
  it { should have_many(:questions).through(:topics)}
end
