class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  #  :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable # :confirmable
  has_many :reviews
  has_one :profile
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :name, :remember_me
  # attr_accessible :title, :body

  after_create :build_profile 

end
