class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :requirements, presence: true
  belongs_to :user
end
