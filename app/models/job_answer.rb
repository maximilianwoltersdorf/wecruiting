class JobAnswer < ActiveRecord::Base
  # attr_accessible :title, :body
  
  #relations
  belongs_to :job_posting
  belongs_to :consumer

  as_enum :interface, { :xing => 0, :linked_in, :other => 99 }

end
