module Spree
  class PicturesController < Spree::StoreController
    before_filter :load_data

    #create.before :set_viewable
    #update.before :set_viewable
    #destroy.before :destroy_before

   

    def new
      @picture = Picture.new
    end

    def create
      @picture = @line_item.pictures.build(params[:picture])
      if @picture.save
        flash[:notice] = "Picture successfully uploaded"
        redirect_to cart_path
      else
        render new
      end

    end

    def update

    end

   def update_positions
      params[:positions].each do |id, index|
        Picture.where(:id => id).update_all(:position => index)
      end

      respond_to do |format|
        format.js  { render :text => 'Ok' }
      end
   end



    private

      def load_data
        @line_item = LineItem.find(params[:line_item_id])
      end

     
  end
end