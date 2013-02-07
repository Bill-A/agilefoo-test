class TopicsController < ApplicationController
	before_filter :authenticate_user!, except: [:index, :show]

	def index
		@topics = Topic.all
		@topic = Topic.new
	end

	def show
		@topic = Topic.find(params[:id])
		@reply = Reply.new
	end

	def new
		@topic = Topic.new
	end

	def create		
		@topic = Topic.new(params[:topic])
		@topic.user = current_user
		if @topic.save
			redirect_to topics_path
		else
			render 'new'
		end
	end
end
