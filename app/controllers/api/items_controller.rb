class Api::ItemsController < ApplicationController

	def index
		# @items = Item.all
		@items = Item.select(:id,:name,:price,:category,:size,:brand).take(12)
	end

  def show
		@item = Item.find(params[:id])
	end

	# for infitinite scrolls
	def fetch_items
		@page = params[:page]

		puts 'items are now fetched:'
		puts @page

		render json: @page.to_i + 1
	end


end



