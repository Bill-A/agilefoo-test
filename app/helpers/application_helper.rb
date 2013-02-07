module ApplicationHelper
	def display_for(role)
		yield if current_user.in_role?(role)
	end

	def title(page_title)
		content_for(:title){page_title}
	end
end
