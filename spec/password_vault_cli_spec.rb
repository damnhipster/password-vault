require 'rspec'
require 'passwords'
require 'spec_helper'

feature Passwords do

	given('passwords') {'are empty'}

	scenario "should say 'Hello from Rspec' when run" do        
	  output = `./lib/passwords.rb`
	  output.should == 'HelloWorld'   
	end	

end