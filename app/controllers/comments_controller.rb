class CommentsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def new

	end

	def create
		binding.pry
	end



end

