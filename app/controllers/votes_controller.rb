class VotesController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show]

  def create
    @post = Post.find(params[:post_id])
	@vote = Vote.where(:post_id => params[:post_id], :user_id => current_user.id).first
	if @vote
		@vote.up = params[:up]
	else
		@vote = @post.votes.create(up: params[:up])
		@vote.user_id = current_user.id
	end
	@vote.save

    redirect_to posts_path
  end
end
