class Userfollowship < ActiveRecord::Base
  belongs_to :user
  belongs_to :ship
end
