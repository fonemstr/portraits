module Spree
	module Admin
	  class PicturesController < Spree::Admin::BaseController
	  	before_filter :load_data

	  	def index
	 
	  	end

	  	def show
	  	end

	  	def load_data
	  		@order = Order.find_by_number(params[:order_id])
	  		@line_items = @order.line_items
	  		@pictures = []
	  		@line_items.each do |line_item|
	  			@pictures  << line_item.pictures.first unless line_item.pictures.first.nil?
	  	  end	  		
	  	end
	  end
  end
end