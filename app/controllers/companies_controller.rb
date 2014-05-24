class CompaniesController < ApplicationController
	
	def index
		@companies = Company.all

		respond_to do |f|
			f.json {render :json => @companies, :except => :created_at}
		end
	end
	 
	def create
	 	@company = Company.new(params[:id])
	end
	
	def show
	 	@company = Company.all
	end
	
	def new
	 	@company = Company.all
		respond_to do |f|	
	 	f.html { render :html }
	 	f.json { render :json => @companies }
	 	end
	end
	
	def delete
	
	end

	def edit

	end

	def update

	end

	private
	def companies_params
		params.require(:companies).permit(:title, :size, :industry, :location, :description, :url)
	end
end
