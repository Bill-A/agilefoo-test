class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :twitter, :password, :password_confirmation, :remember_me

  validates :username, :length => { :minimum => 3 }
  validates_uniqueness_of :username
  # validates :username, :uniqueness
  
  validate :password_complexity
 
  # Notes: RegEx expression decoded
  # Secure passwords must consist of string of at least 8 characters 
  # with at least one letter, one number and one symbol
  # 
  # ((?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*-+=_?{}\/<>]).{8,128})
  # (?=.*[a-zA-Z])       #   must contains one lowercase or uppercasecharacters
  # (?=.*\d)             #   must contains one digit from 0-9
  # (?=.*[-+=_!@#$&*.,?])#   must contains one special symbols in the list "-+=_!@#$&*.,?"
  # .                    #   match anything with previous condition checking
  # {8,128}              #   length at least 8 characters and maximum of 128

  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-zA-Z])(?=.*\d)(?=.*[-+=_!@#$&*.,?]).{8,128}/)
      errors.add :password, "must consist of at least 8 characters with at least one letter, one number and one symbol: -+=_!@#$&*.,?"
    end
  end


	has_many :posts, :dependent => :destroy
	has_many :comments, :dependent => :destroy
	has_many :topics, :dependent => :destroy
	has_many :replies, :dependent => :destroy
	has_many :votes, :dependent => :destroy
end
