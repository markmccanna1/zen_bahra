require 'spec_helper'

describe UsersController, :type => :controller do
  let(:user_controller) { UsersController.new }

  it "should get new view" do
    get :new
    assert_response :success
    assert_not_nil assigns(:user)
  end
end
