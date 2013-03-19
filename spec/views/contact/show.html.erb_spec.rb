require 'spec_helper' 

describe "contact/show.html.erb" do
	it "displays the Contact page" do
		# assign(:contact, double("Contact", :text => "Bill Allen"))
		render
		rendered.should contain("Contact Info")
	end
end