class Consumers::JobAnswersController < ApplicationController
	before_filter :find_base_data
	
	def new
		@job_answer = current_consumer.job_answers.new
	end

	def create
		@job_answer = current_consumer.job_answers.new
		#if @job_answer.save
		#	redirect_to [:consumers, ]
	end


 private

 	def find_base_data
 		
 	end


end
