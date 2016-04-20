class Job < ActiveRecord::Base
  validates :company, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :requirements, presence: true
  belongs_to :user
  has_many :applications #, :through => :users

  scope :keyword_search, ->(search) {where('lower(company) LIKE ? OR lower(description) LIKE ? OR lower(requirements) LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%" ) if !search.blank?}

  scope :company_name, ->(search) {where("lower(company) LIKE ?", "%#{search.downcase}%") if !search.blank?}

  scope :description, ->(search) {where("lower(description) LIKE ?", "%#{search.downcase}%") if !search.blank?}

#  scope :salary, ->(search) {where("remuneration > ? AND remuneration <= ")}
  scope :salary, ->(min, max) {where("remuneration BETWEEN ? AND ?", "#{min}", "#{max}" ) if !min.blank? && !max.blank?}




end
