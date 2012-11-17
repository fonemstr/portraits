Spree::OrdersController.module_eval do
	def populate
      @order = current_order(true)

      if params[:option_types] and params[:product]
        variant = Spree::Variant.find_by_option_types_and_product(params[:option_types].values, params[:product])
        quantity = params[:quantity].to_i
        @line_item = @order.add_variant(variant, quantity) if quantity > 0
      end

      params[:products].each do |product_id,variant_id|
        quantity = params[:quantity].to_i if !params[:quantity].is_a?(Hash)
        quantity = params[:quantity][variant_id].to_i if params[:quantity].is_a?(Hash)
        @line_item = @order.add_variant(Spree::Variant.find(variant_id), quantity) if quantity > 0
      end if params[:products]

      params[:variants].each do |variant_id, quantity|
        quantity = quantity.to_i
        @line_item = @order.add_variant(Spree::Variant.find(variant_id), quantity) if quantity > 0
      end if params[:variants]

      fire_event('spree.cart.add')
      fire_event('spree.order.contents_changed')
      
      respond_with(@line_item) { |format| format.html { redirect_to new_line_item_picture_url(@line_item) } }
    end
end