require 'spec_helper'
require_relative "../../app/models/tag.rb"

describe Tag do
  let (:tag) {Tag.new(name: "tag_name", user_id: 1, description: "description")}

  context '#initialize' do 
    it "has a name" do
      expect(tag.name).to eql "tag_name"
    end 

    it "has a description" do
      expect(tag.description).to eql "description"
    end

    it "has a user_id" do
      expect(tag.user_id).to eql 1
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
  
end
