class VotesController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show]

  def create
    @post = Post.find(params[:post_id])
    @vote = @post.votes.create(up: params[:up])
  	@vote.user_id = current_user.id
  	@vote.save
    redirect_to posts_path
  end
end
