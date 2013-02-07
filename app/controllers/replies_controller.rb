class RepliesController < ApplicationController
  def create
  	@topic = Topic.find(params[:topic_id])
  	@reply = @topic.replies.create(params[:reply])
  	@reply.user_id = current_user.id
  	if @reply.save
  		redirect_to topics_path 
  	else
 		render 'topics/show'
    end
  end
end