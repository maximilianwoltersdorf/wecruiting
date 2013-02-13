class Consumers::JobAnswersController < ApplicationController
	before_filter :find_base_data
	
	def index
		
	end

	def new
		@job_answer = current_consumer.job_answers.new
	end

	def create
	  case params[:job_answer][:interface_type]
	  when "xing"
	    puts "XING"
	  else 
      puts "NOT IMPLEMENTED YET"
	  end
		respond_to do |wants|
		  wants.js
		end
	end



 private

 	def find_base_data
 		@job_posting = JobPosting.find(params[:job_posting_id]) if params[:job_posting_id]
 	end


end
