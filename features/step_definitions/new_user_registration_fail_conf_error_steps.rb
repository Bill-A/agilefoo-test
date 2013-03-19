Then(/^I land on the New User Registration page with the message 'Password doesn't match confirmation'$/) do
	page.should have_content("Password doesn't match confirmation")
end