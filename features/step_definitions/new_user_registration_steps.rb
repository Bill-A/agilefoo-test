Given(/^I am on the New User Registration page$/) do
	visit new_user_registration_path
	# print page.html
end

When(/^I submit registration details with incorrect password confirmation$/) do

	fill_in :user_email,                 :with => 'test@govirtual.com'
	fill_in :user_username,              :with => 'i_tester'
	fill_in :user_password,              :with => 'secret08!'
	fill_in :user_password_confirmation, :with => 'secret08'
	click_button 'Register User'
end

Then(/^I land on the New User Registration page with the message 'Password doesn't match confirmation'$/) do
	page.should have_content("Password doesn't match confirmation")
end
