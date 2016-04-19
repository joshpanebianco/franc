class Job < ActiveRecord::Base
  validates :company, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :requirements, presence: true
  belongs_to :user
  has_many :applications, :through => :users
end
