class JobAnswer < ActiveRecord::Base
  # attr_accessible :title, :body
  
  #relations
  belongs_to :job_posting
  belongs_to :consumer


end
