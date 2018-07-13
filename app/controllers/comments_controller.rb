class CommentsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def new

	end

	def create
		# binding.pry

		@item = Item.find(params[:item_id])
		@content = params['content']






	end



end

