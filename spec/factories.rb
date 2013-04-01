FactoryGirl.define do
	factory :user do |f|
		f.sequence(:username) { |n| "user000#{n}" }
		f.sequence(:email) { |n| "user000#{n}@example.com" }
		f.password "secret08!"
		f.password_confirmation { |u| u.password }
	end
end

# FactoryGirl.define do
# 	factory :user_records do 
# 		email_address "newuser@tester.com"
# 		username "newuser"
# 		password "secret08!"
# 		password_confirmation { |u| u.password }
# 		message "some status"
# 	end	
# end