class ItemsController < ApplicationController

	def show
		@item = Item.find(params[:id])

		respond_to do |format|
	    format.html
	    # format.json { render :json => @item.to_json(:include => :comments) }
	  end
		# binding.pry
	end


end

