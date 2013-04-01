require 'spec_helper'

describe "Registration" do
	describe "Using invalid username" do
		it "Displays error indicating invalid username" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => 'test1@govirtual.com'
			fill_in :user_username,              :with => 'me'
			fill_in :user_password,              :with => 'secret08!'
			fill_in :user_password_confirmation, :with => 'secret08!'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Username is too short (minimum is 3 characters)")
		end
	end
	describe "Using invalid email address" do
		it "Displays error indicating invalid email address" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => 'test2@govirtual'
			fill_in :user_username,              :with => 'me'
			fill_in :user_password,              :with => 'secret08!'
			fill_in :user_password_confirmation, :with => 'secret08!'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Email is invalid")
		end
	end
	describe "Using password that doesn't match confirmation password" do
		it "Displays error indicating password confirmation mismatch" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => 'test3@govirtual.com'
			fill_in :user_username,              :with => 'i_test_3'
			fill_in :user_password,              :with => 'secret08!'
			fill_in :user_password_confirmation, :with => 'secret08'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Password doesn't match confirmation")
		end
	end
	describe "Using new email address with an existing userid" do
		it "Displays error indicating username has already been taken" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => 'testt@govirtual.com'
			fill_in :user_username,              :with => 'testt'
			fill_in :user_password,              :with => 'secret08!'
			fill_in :user_password_confirmation, :with => 'secret08!'
			click_button 'Register User'
			# save_and_open_page
			page.should have_selector ".alert", text: "Welcome! You have signed up successfully."


			click_link 'Log Out'

			visit (new_user_registration_path)			
			fill_in :user_email,                 :with => 'new_address@govirtual.com'
			fill_in :user_username,              :with => 'testt'
			fill_in :user_password,              :with => 'secret08!'
			fill_in :user_password_confirmation, :with => 'secret08!'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Username has already been taken")
		end
	end	
end