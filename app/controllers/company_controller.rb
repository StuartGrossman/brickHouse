class CompanyController < ApplicationController
	def index
		@companies = Company.all
		# respond_to do |x|
		# x.html { render :html}
		# x.json { render :json => @companies :key => "value", title, :size, :industry, :location, :description, :url}
		# end
		# redirect_to root_path
	end
end
