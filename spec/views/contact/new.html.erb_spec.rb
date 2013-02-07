require 'spec_helper'

describe "contact/new.html.erb" do
	let(:contact) do
    	mock_model("Contact").as_new_record.as_null_object
    end
	before do
    	assign(:contact, contact)
	end

  it "shows a form to create a contact message" do
    render
    rendered.should have_selector("form",
      							:method => "post",
      							:action => contacts_path
    ) do |form|
    	form.should have_selector("input", :type => "submit")
    end
  end

  it "shows a text field for the contact title" do
    contact.stub(:msg => "the title")
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("input",
        :type => "text",
        :name => "contact[msg]",
        :value => "the title"
    )
    end
  end

  it "shows a text area for the contact text" do
    contact.stub(:text => "the message")
    render
    rendered.should have_selector("form") do |form|
      form.should have_selector("textarea", 
        :name => "contact[text]", 
        :content => "the message"
     )
    end    
  end
 

end