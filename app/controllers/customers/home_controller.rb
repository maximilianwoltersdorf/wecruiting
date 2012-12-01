class Customers::HomeController < ApplicationController
	layout "customer"
	before_filter :find_base_data


	def index
		@job_postings = current_customer.job_postings.all
	end




 private

 	def find_base_data
 		@departments = current_customer.departments.all
 	end
end
