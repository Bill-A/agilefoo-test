require 'spec_helper'

describe PostsController do
	render_views

	before (:each) do
		@posts = Post.new(:title => "Ruby on Rails Guides (v3.2.9)", 
						  :url => "http://guides.rubyonrails.org/index.html")
	end

	describe "GET 'index'" do
		it "should return the post page" do
			get 'index'
			response.should be_success
		end

		it "should display the correct title" do
			get 'index'
			response.should have_selector("title", :content => "Agile Box")
		end		
	end

end
