class Reply < ActiveRecord::Base
  attr_accessible :text

	validates :text, presence: true

  belongs_to :topic
  belongs_to :user

  default_scope :order => 'replies.created_at DESC'
end
