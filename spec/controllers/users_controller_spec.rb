require 'spec_helper'

describe UsersController do
  let(:user_controller) { UsersController.new }

  it "should have a method 'new'" do
    expect(user_controller).to respond_to(:new)
  end

  it "should have a method 'create'" do
    expect(user_controller).to respond_to(:create)
  end 
end
