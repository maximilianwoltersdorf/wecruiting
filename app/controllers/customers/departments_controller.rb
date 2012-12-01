class Customers::DepartmentsController < ApplicationController
	layout "customer"
	before_filter :find_base_data

	def index
		@departments = current_customer.departments.all
	end

	def new
		@department = Department.new
	end

	def create
		@department = current_customer.departments.new(params[:department])
		if @department.save
			redirect_to customers_department_path(@department)
		else
			render :new
		end
	end

	def show
		@department = current_customer.departments.find(params[:id])
		@job_postings = @department.job_postings
	end

 private

 	def find_base_data
 		@departments = current_customer.departments.all
 	end
end


