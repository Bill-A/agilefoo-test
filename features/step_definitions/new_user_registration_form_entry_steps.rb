When(/^I submit registration details with incorrect password confirmation$/) do

	fill_in :user_email,                 :with => 'test@govirtual.com'
	fill_in :user_username,              :with => 'i_tester'
	fill_in :user_password,              :with => 'secret08'
	fill_in :user_password_confirmation, :with => 'secret0'
	click_button 'Register User'

end

