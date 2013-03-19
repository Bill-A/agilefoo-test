Then(/^I obtain this response "(.*?)"$/) do 
	|message|
	page.should have_content(message)
end