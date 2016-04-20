
class User < ActiveRecord::Base
  ratyrate_rater
  has_many :applications
  has_many :jobs
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
end
