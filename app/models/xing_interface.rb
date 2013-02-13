class XingInterface < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :job_answers
  #, :as => :interface
  
end
