class Job < ActiveRecord::Base
  validates :name , uniqueness: true 
  validates :cargo , length: { minimum: 50 , too_short: ": %{count} is the minimum characters required" }
  validates :cost , numericality: { greater_than_or_equal_to: 1000 }
  # When using numericality, always make sure the data type
  # matches what is being saved matches with the validation
  belongs_to :user
  belongs_to :ship
end
