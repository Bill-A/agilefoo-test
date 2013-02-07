class PostsController < ApplicationController
	before_filter :authenticate_user!, except: [:index, :show]

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
	end

	def new
		@post = Post.new
	end

	def create		
		@post = Post.new(params[:post])
		@post.user = current_user
		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end
	end
end