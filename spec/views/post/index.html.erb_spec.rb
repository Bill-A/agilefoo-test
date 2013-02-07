require 'spec_helper'

describe "post/index.html.erb" do
	it "displays the Post page" do
		assign(:contact, double("Contact", :text => "Bill Allen"))
		render
		rendered.should contain("Bill Allen")
	end
end