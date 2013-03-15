class RequestMessage < ActiveRecord::Base
   attr_accessible :email, :name, :message, :newsletter, :user_token
   
   #validations
   validates :email, :name, :presence => true
end
