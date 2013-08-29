require 'spec_helper'

describe 'User' do
	
	let(:user) { FactoryGirl.build(:user) }
	let(:noname_user) { FactoryGirl.build(:noname_user) }
	let(:noemail_user) { FactoryGirl.build(:noemail_user) }

	context "#save" do

		it "should create a user when all attributes are present and proper" do
			expect{ user.save! }.to_not raise_error
		end

		it "should not create a user without a name" do
			expect{ noname_user.save! }.to raise_error
		end

		it "should not create a user without an email" do
			expect{ noemail_user.save! }.to raise_error
		end

		it "should not create a user with a non-unique email address" do
			user.save!
			expect{ user.save! }.to raise_error
		end
	end
end