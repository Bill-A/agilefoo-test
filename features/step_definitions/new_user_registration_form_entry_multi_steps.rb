When(/^I submit "(.*?)" and "(.*?)" and "(.*?)" and "(.*?)"$/) do 
	|email_address, username, password, password_confirmation|

	fill_in :user_email,                 :with => email_address
	fill_in :user_username,              :with => username
	fill_in :user_password,              :with => password
	fill_in :user_password_confirmation, :with => password_confirmation
	click_button 'Register User'
 
 end