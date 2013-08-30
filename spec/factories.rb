FactoryGirl.define do

	factory :user do
		temp = Faker::Name.last_name
		name { Faker::Name.first_name}
		email { Faker::Internet.email}
		password { temp }
		password_confirmation { temp }
	end

	factory :noname_user, class: User do
		temp = Faker::Name.last_name
		name { nil }
		email { Faker::Internet.email}
		password { temp }
		password_confirmation { temp }
	end

	factory :noemail_user, class: User do
		temp = Faker::Name.last_name
		name { Faker::Name.first_name}
		email { nil }
		password { temp }
		password_confirmation { temp }
	end
end
