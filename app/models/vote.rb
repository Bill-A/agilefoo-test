class Vote < ActiveRecord::Base
  attr_accessible :up

  belongs_to :post
  belongs_to :user
end
