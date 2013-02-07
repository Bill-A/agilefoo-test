module PostHelper
	def display_url_link(post)  
		link_to post.title, post.url
	end
end