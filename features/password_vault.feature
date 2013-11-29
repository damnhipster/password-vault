Feature: As a forgetful person I want to be able to save my passwords somewhere because its totally safe
	
	Scenario: User retrieves a key
		Given my vault has the password 'amazon' for Amazon
		When I retrieve my Amazon password
		Then I should see 'amazon'