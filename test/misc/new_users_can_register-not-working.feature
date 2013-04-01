# Could not get the Factory working!!
 
@factory
Feature: new users can register 

In order to gain access to the site
As a new user
I want to register with my details

Notes: secure passwords must consist of string of at least 8 characters 
	   with at least one letter, one number and one symbol

	Scenario: new user attempts registration
		Given the following user records
		  | email_address        | username   | password  | password_confirmation | landing_page          | message                                                                                            |  
		  | test1@govirtual.com  | my         | gr8Zeus+  | gr8Zeus+              | New User Registration | Username is too short (minimum is 3 characters)                                                    |  
		  | test2@govirtual      | gooduser   | gr8Zeus0  | gr8Zeus0              | New User Registration | Email is invalid                                                                                   |  
		  | test3@govirtual.com  | gooduser   | gr8Zeus1  | gr8Zeus2              | New User Registration | Password doesn't match confirmation                                                                |  
		  | test5@govirtual.com  | i_tester   | secret0   | secret0               | Main page             | Password is too short (minimum is 8 characters)                                                    |  
		  | test6@govirtual.com  | Tester01   | password  | password              | Main page             | Password must consist of at least 8 characters with at least one letter, one number and one symbol |  
		  | test7@govirtual.com  | Test_Allen | TesT2001  | TesT2001              | Main page             | Password must consist of at least 8 characters with at least one letter, one number and one symbol |  
		  | test8@govirtual.com  | billy      | 007word   | 007word               | Main page             | Password is too short (minimum is 8 characters)                                                    |  
		  | test9@govirtual.com  | user       | gr@@Zeus  | gr@@Zeus              | Main page             | Password must consist of at least 8 characters with at least one letter, one number and one symbol |  
		  | test10@govirtual.com | i_test     | secret08! | secret08!             | AgileFoo              | Welcome! You have signed up successfully.                                                          |  
		  | test11@govirtual.com | Tester01   | p@ssw0rd  | p@ssw0rd              | AgileFoo              | Welcome! You have signed up successfully.                                                          |  
		  | test12@govirtual.com | Test_Allen | TesT200!  | TesT200!              | AgileFoo              | Welcome! You have signed up successfully.                                                          |  
		  | test13@govirtual.com | billy      | 007word!  | 007word!              | AgileFoo              | Welcome! You have signed up successfully.                                                          |  
		  | test14@govirtual.com | user       | gr8Zeus+  | gr8Zeus+              | AgileFoo              | Welcome! You have signed up successfully.                                                          |  
		And I am on the New User Registration page
		When I submit "<email_address>" and "<username>" and "<password>" and "<password_confirmation>"
		Then I should see "<message>"
