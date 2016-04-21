
class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  ratyrate_rater
  has_many :applications
  has_many :jobs
  has_secure_password
  validates :email, :presence => true, :uniqueness => true

  attr_accessor :avatar
  mount_uploader :avatar, AvatarUploader
end
