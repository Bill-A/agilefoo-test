@many
Feature: new users can register 

In order to gain access to the site
As a new user to AgileFoo
I want to register with my details

Notes: secure passwords must consist of string of at least 8 characters 
	   with at least one letter, one number and one symbol

	Scenario Outline: new user attempts registration
		Given I am on the New User Registration page of AgileFoo
		When I submit "<email_address>" and "<username>" and "<password>" and "<password_confirmation>"
		Then I obtain this response "<message>"
		Scenarios: attempted registration with invalid username
		  | email_address       | username   | password  | password_confirmation | landing_page          | message                                                                                            |  
		  | test5@govirtual.com | my         | gr8Zeus+  | gr8Zeus+              | New User Registration | Username is too short (minimum is 3 characters)                                                    |  
		Scenarios: attempted registration with invalid email address
		  | email_address       | username   | password  | password_confirmation | landing_page          | message                                                                                            |  
		  | test@govirtual      | gooduser   | gr8Zeus0  | gr8Zeus0              | New User Registration | Email is invalid                                                                                   |  
		Scenarios: password doesn't match confirmation password
		  | email_address       | username   | password  | password_confirmation | landing_page          | message                                                                                            |  
		  | test@govirtual.com  | gooduser   | gr8Zeus1  | gr8Zeus2              | New User Registration | Password doesn't match confirmation                                                                |  
		Scenarios: insecure passwords 
		  | email_address       | username   | password  | password_confirmation | landing_page          | message                                                                                            |  
		  | test5@govirtual.com | i_tester   | secret0   | secret0               | Main page             | Password is too short (minimum is 8 characters)                                                    |  
		  | test6@govirtual.com | Tester01   | password  | password              | Main page             | Password must consist of at least 8 characters with at least one letter, one number and one symbol |  
		  | test7@govirtual.com | Test_Allen | TesT2001  | TesT2001              | Main page             | Password must consist of at least 8 characters with at least one letter, one number and one symbol |  
		  | test8@govirtual.com | billy      | 007word   | 007word               | Main page             | Password is too short (minimum is 8 characters)                                                    |  
		  | test9@govirtual.com | user       | gr@@Zeus  | gr@@Zeus              | Main page             | Password must consist of at least 8 characters with at least one letter, one number and one symbol |  
		Scenarios: successful registration with secure password
		  | email_address       | username   | password  | password_confirmation | landing_page          | message                                                                                            |  
		  | test@govirtual.com  | i_tester   | secret08! | secret08!             | Main page             | Welcome! You have signed up successfully.                                                          |  
		  | test1@govirtual.com | Tester01   | p@ssw0rd  | p@ssw0rd              | Main page             | Welcome! You have signed up successfully.                                                          |  
		  | test2@govirtual.com | Test_Allen | TesT200!  | TesT200!              | Main page             | Welcome! You have signed up successfully.                                                          |  
		  | test3@govirtual.com | billy      | 007word!  | 007word!              | Main page             | Welcome! You have signed up successfully.                                                          |  
		  | test4@govirtual.com | user       | gr8Zeus+  | gr8Zeus+              | Main page             | Welcome! You have signed up successfully.                                                          |  
