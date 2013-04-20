class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end
  
  def profile
    # @last_voted_comments = Array.new(2) {Array.new(current_user.votes.count)}

  	@user = current_user
  	@last_posts = @user.posts.all(order:'created_at DESC').take(10)
    @last_tweets = []; @last_tweets = Twitter.user_timeline(@user.twitter.to_s).take(10) if !@user.twitter.blank? 
    @last_comments = @user.comments.all(order:'created_at DESC').take(10)
    @last_votes = @user.votes.all(order:'created_at DESC').take(10)   
    # @last_voted_comments = @user.votes.comments.all(order:'created_at DESC').take(10) 
   	@last_topics = @user.topics.all(order:'created_at DESC').take(10) 
  	@last_replies = @user.replies.all(order:'created_at DESC').take(10)   		
  end

end
