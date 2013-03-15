class RequestMessage < ActiveRecord::Base
   attr_accessible :email, :name, :message, :newsletter, :user_token
   
   #validations
   validates :email, :name, :presence => true
   
   #hooks
 	 after_create :notify_and_confirm
 	 
 private

  def notify_and_confirm
    StaffMailer.notify_team(self).deliver
    StaffMailer.confirm_request(self).deliver
  end
end
