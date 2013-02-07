class Post < ActiveRecord::Base
	attr_accessible :title, :url

	validates :title, presence: true

    validates_format_of :url, :with => URI::regexp(%w(http https)),   presence: true
	# http://www.intridea.com/blog/2009/2/18/quick-tip-url-validation-in-rails
	has_many :comments
	has_many :votes
  	belongs_to :user

	def vote_tally(post)
		post.votes.where(:up => true).count - post.votes.where(:up => false).count
	end

	default_scope :order => 'posts.created_at DESC'
end
