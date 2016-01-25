class Ship < ActiveRecord::Base
  validates :ship_name, uniqueness: true 
  belongs_to :user
  has_many :jobs

  has_many :userfollowships
  # This is saying that ships has many followers and is following
  # many users
  has_many :followingusers , through: :userfollowships , source: :user
  # This is saying that a ship has many users that are following that ship
  # through the userfollowships table, and its looking for the relationship
  # with users. 

  # This is to allow pics/avatars for each individual ship
  has_attached_file :avatar , :styles => { :medium => "300x300>" , :thumb => "150x150>" } , :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar , :content_type => /\Aimage\/.*\Z/
end
