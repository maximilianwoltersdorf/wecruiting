class RequestMessage < ActiveRecord::Base
   attr_accessible :email, :name, :message, :newsletter
   
   #validations
   validates :email, :name, :presence => true
end
