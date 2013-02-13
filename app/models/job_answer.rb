class JobAnswer < ActiveRecord::Base
  # attr_accessible :title, :body
  
  #relations
  belongs_to :job_posting
  belongs_to :consumer
  belongs_to :interface, :polymorphic => true
    
  #enums
  as_enum :interface_type, [:xing, :linked_in]
  
  
  
  #state machine
  state_machine :status, :initial => :created do
   
  #states
  state :interface_chosen do
   validates :interface_type_cd, presence: true      
  end
  
#   state :profile_fetched do
#   
#   end
#   state :answered do
#   
#   end
#   #events
    event :chose_interface do
     transition :created => :interface_chosen
    end
 end


end
