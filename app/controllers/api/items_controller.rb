class Api::ItemsController < ApplicationController

	def index
		# @items = Item.all
		@items = Item.select(:id,:name,:price,:category,:size,:brand)
	end

  def show
		@item = Item.find(params[:id])
	end


end





