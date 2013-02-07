class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :twitter, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

	has_many :posts, :dependent => :destroy
	has_many :comments, :dependent => :destroy
	has_many :topics, :dependent => :destroy
	has_many :replies, :dependent => :destroy
	has_many :votes, :dependent => :destroy
end
