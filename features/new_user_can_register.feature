@single
Feature: new users can register 

In order to gain access to the site
As a new user to AgileFoo
I want to register with my details

Notes: secure passwords must consist of string of at least 8 characters 
	   with at least one letter, one number and one symbol

	Scenario: new user registration where password doesn't match confirmation password
		Given I am on the New User Registration page of AgileFoo
		When I submit registration details with incorrect password confirmation
		Then I land on the New User Registration page with the message 'Password doesn't match confirmation'
