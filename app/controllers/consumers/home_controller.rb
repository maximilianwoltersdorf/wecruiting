class Consumers::HomeController < ApplicationController
	layout 'consumer'

	def index
		@job_postings = JobPosting.all
	end
end
