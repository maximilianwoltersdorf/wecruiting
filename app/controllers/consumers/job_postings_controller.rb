class Consumers::JobPostingsController < ApplicationController
	layout 'consumer'
	
	def index
		@job_postings = JobPosting.all
	end

	def show
		@job_posting = JobPosting.find(params[:id])
		@department = @job_posting.department
	end

end
