require 'spec_helper' 

describe "static_pages/contact.html.erb" do
	it "displays the Contact page" do
		# assign(:contact, double("Contact", :text => "Bill Allen"))
		render
		rendered.should contain("Contact me")
		# response.should have_xpath("//title", :text => "Contact Info")		
	end
end