class Customers::JobPostingsController < ApplicationController
	layout "customer"
	before_filter :find_base_data

	def index
		@job_postings = current_customer.job_postings
	end

	def new
		@job_posting = JobPosting.new
		@department = current_customer.departments.find(params[:department_id])
	end

	def create
		@job_posting = current_customer.job_postings.new(params[:job_posting])
		@job_posting.department_id = @department.id
		if @job_posting.save
			redirect_to customers_root_path
		else
			render :new
		end
	end

	def destroy
		@job_posting.destroy
		redirect_to customers_root_path
	end

	def edit
		
	end

	def update
		if @job_posting.update_attributes(params[:job_posting])
			redirect_to [:customers, @department]
		else
			render :edit
		end
	end

 
 private

 	def find_base_data
		@job_posting = current_customer.job_postings.find(params[:id]) if params[:id]
		@departments = current_customer.departments.all
		@department = current_customer.departments.find(params[:department_id]) if params[:department_id]
 	end

end
