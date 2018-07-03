class Api::ItemsController < ApplicationController

	def index
		# @items = Item.all
		@items = Item.select(:id,:name,:price,:category,:size,:brand,:posted_at,:expires_at).take(12)
	end

  def show
		@item = Item.find(params[:id])
	end

	# for infitinite scrolls
	def fetch_items
		@page = params[:page]

		# puts 'items are now fetched:'
		# puts @page

		@start = (@page.to_i*10)
		# @end = @start + 9

		sleep(0.5)

		@items = Item.select(:id,:name,:price,:category,:size,:brand,:posted_at,:expires_at).offset(@start).limit(8)
		if @items.empty?
			@all_loaded = true
		else
			@all_loaded = false
		end

		render json: {page: @page.to_i + 1, items: @items, all_loaded: @all_loaded}
	end


end



