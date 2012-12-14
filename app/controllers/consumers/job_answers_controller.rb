class Consumers::JobAnswersController < ApplicationController
	before_filter :find_base_data
	
	def index
		
	end

	def new
		@job_answer = current_consumer.job_answers.new
	end

	def create
		# To DO
		#@job_answer = current_consumer.job_answers.new

	end



 private

 	def find_base_data
 		
 	end


end
