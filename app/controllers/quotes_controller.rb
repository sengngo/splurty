class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end #index

	def new
		@quote = Quote.new
	end #new

	# sends the saying and author part to the data based to get saved
	def create
		Quote.create(quote_params)
		redirect_to root_path
	end #create

	private
	#quote_params defines the parameter of a quote
	def quote_params
		# permit - is a security feature - we are only permitting a saying and author in to the database
		params.require(:quote).permit(:saying, :author)
	end #quote_params
end #Class QuotesController
