class CompaniesController < ApplicationController
	
	
	def index
		@companies = Company.all

		respond_to do |f|
			f.html {render :index}
			f.json {render :json => @companies, :except => :created_at}
		end
	end
	 
	def create
	 	@company = Company.new company_params

	 	respond_to do |f|	
	 		if @company.save
	 			f.html { render :html }
	 			f.json { render :json => @company, status: :created }
	 		else
	 			f.json { render json: @company.errors, status: :unprocessable_entity}
	 		end
	 	end
	end
	
	def show
	 	@company = Company.find(params[:id])
	end
	
	def new
	 	@company = Company.new
		
	end
	
	def destroy
		Company.find(params[:id].destroy)
		redirect_to companies_path
	end

	def edit
		@company = Company.find(params[:id])
	end

	def update
		company = Company.find(params[:id])
		company.update company_params
		redirect_to company_path
	end

	private
	def company_params
		params.require(:company).permit(:title, :size, :industry, :location, :description, :url)
	end
end
