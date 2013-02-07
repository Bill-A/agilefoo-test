class Topic < ActiveRecord::Base
  attr_accessible :text

	validates :text, presence: true

	has_many :replies
  	belongs_to :user

	default_scope :order => 'topics.created_at DESC'  	
end
