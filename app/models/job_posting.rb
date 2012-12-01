class JobPosting < ActiveRecord::Base
  attr_accessible :title, :description, :requirements

  # relation
  belongs_to :customer
  belongs_to :department
  has_many :job_answers

  #validations
  validates :title, :description, :requirements, :presence => true
end
