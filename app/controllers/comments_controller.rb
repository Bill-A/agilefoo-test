class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(params[:comment])
  	@comment.user_id = current_user.id
  	if @comment.save
  		redirect_to posts_path
  	else
  		render 'posts/show'
    end
  end
end