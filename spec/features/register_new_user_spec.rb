require 'spec_helper'

feature "Register new account" do

	background do
		@user = FactoryGirl.attributes_for(:user) 
	end

	describe 'Using invalid username' do
		scenario 'Displays error indicating invalid username' do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => 'me'
			fill_in :user_password,              :with => @user[:password]
			fill_in :user_password_confirmation, :with => @user[:password_confirmation]
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Username is too short (minimum is 3 characters)")
		end
	end
	describe "Using invalid email address" do
		scenario "Displays error indicating invalid email address" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => 'test@govirtual'
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => @user[:password]
			fill_in :user_password_confirmation, :with => @user[:password_confirmation]
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Email is invalid")
		end
	end
	describe "Using password that doesn't match confirmation password" do
		scenario "Displays error indicating password confirmation mismatch" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'secret08!'
			fill_in :user_password_confirmation, :with => 'secret07!'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Password doesn't match confirmation")
		end
	end
	describe "Using new email address with an existing userid" do
		scenario "Displays error indicating username has already been taken" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => 'existing'
			fill_in :user_password,              :with => @user[:password]
			fill_in :user_password_confirmation, :with => @user[:password_confirmation]
			click_button 'Register User'
			# save_and_open_page
			page.should have_selector ".alert", text: "Welcome! You have signed up successfully."


			click_link 'Log Out'

			visit (new_user_registration_path)			
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => 'existing'
			fill_in :user_password,              :with => @user[:password]
			fill_in :user_password_confirmation, :with => @user[:password_confirmation]
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Username has already been taken")
		end
	end			
	describe "Using insecure passwords" do
		scenario "Displays error indicating password is too short" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'secret0'
			fill_in :user_password_confirmation, :with => 'secret0'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Password is too short (minimum is 8 characters)")
		end
		scenario "Displays error indicating password criteria violations" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'password'
			fill_in :user_password_confirmation, :with => 'password'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Password must consist of at least 8 characters with at least one letter, one number and one symbol")
		end
		scenario "Displays error indicating password criteria violations" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'Test2013'
			fill_in :user_password_confirmation, :with => 'Test2013'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Password must consist of at least 8 characters with at least one letter, one number and one symbol")
		end	
		scenario "Displays error indicating password is too short" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => '007Sky'
			fill_in :user_password_confirmation, :with => '007Sky'
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Password is too short (minimum is 8 characters)")
		end	
		scenario "Displays error indicating password is too short" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'gr@@Zeus '
			fill_in :user_password_confirmation, :with => 'gr@@Zeus '
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Password must consist of at least 8 characters with at least one letter, one number and one symbol")
		end	
		scenario "Displays error indicating password is not provided" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => ''
			fill_in :user_password_confirmation, :with => ''
			click_button 'Register User'
			# save_and_open_page
			page.should have_content("Password can't be blank")
		end						
	end				
	describe "Using secure passwords" do
		scenario "Displays success message" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'secret08!'
			fill_in :user_password_confirmation, :with => 'secret08!'
			click_button 'Register User'
			# save_and_open_page
			page.should have_selector ".alert", text: "Welcome! You have signed up successfully."
		end
		scenario "Displays success message" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'p@ssw0rd'
			fill_in :user_password_confirmation, :with => 'p@ssw0rd'
			click_button 'Register User'
			# save_and_open_page
			page.should have_selector ".alert", text: "Welcome! You have signed up successfully."
		end
		scenario "Displays success message" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'Test20!3'
			fill_in :user_password_confirmation, :with => 'Test20!3'
			click_button 'Register User'
			# save_and_open_page
			page.should have_selector ".alert", text: "Welcome! You have signed up successfully."
		end	
		scenario "Displays success message" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => '007SkyF*'
			fill_in :user_password_confirmation, :with => '007SkyF*'
			click_button 'Register User'
			# save_and_open_page
			page.should have_selector ".alert", text: "Welcome! You have signed up successfully."
		end	
		scenario "Displays success message" do
			visit (new_user_registration_path)
			fill_in :user_email,                 :with => @user[:email]
			fill_in :user_username,              :with => @user[:username]
			fill_in :user_password,              :with => 'gr8Zeus+'
			fill_in :user_password_confirmation, :with => 'gr8Zeus+'
			click_button 'Register User'
			# save_and_open_page
			page.should have_selector ".alert", text: "Welcome! You have signed up successfully."
		end						
	end	
end