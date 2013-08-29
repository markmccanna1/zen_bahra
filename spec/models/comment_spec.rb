require 'spec_helper'
require_relative "../../app/models/comment.rb"

describe Comment do
  # pending "add some examples to (or delete) #{__FILE__}"
  let (:comment) {Comment.new(body: "wasup motha fuckaaaa", user_id: 1, commentable_id: 1)}

  context '#initialize' do 
    it "has a body" do
      expect(comment.body).to eql "wasup motha fuckaaaa"
    end 

    it "has a commenter" do
      expect(comment.user_id).to eql 1
    end

    it "has a commentable_id" do
      expect(comment.commentable_id).to eql 1
    end

    it "cant have a nul body" do
      comm = Comment.new
      expect(comm.valid?).to be_false
    end
  end
end
