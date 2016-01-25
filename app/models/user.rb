class User < ActiveRecord::Base
	has_secure_password
	validates_confirmation_of :password 
	validates_presence_of :password, on: :create
	validates :email, presence: true, uniqueness: true 
	has_many :ships
	has_many :userfollowships
	# This is saying that the user has many followers and is 
	# following many ships
	has_many :followedships , through: :userfollowships , source: :ship
	# This is saying that a user has many ships he/she is following and
	# it is placed in the userfollowships table, and is referecing a 
	# single ship. Active record knows this through the has_many :ship
	# association above with source: :ship. 
	has_many :jobs
end
