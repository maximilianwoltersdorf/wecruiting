class Department < ActiveRecord::Base
  attr_accessible :title, :description, :contact_person, :contact_email

	#relations
	belongs_to :customer
	has_many :job_postings

end
