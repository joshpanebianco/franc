class Application < ActiveRecord::Base
  ratyrate_rateable "application"
  belongs_to :user
  belongs_to :job
end
