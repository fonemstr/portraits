module Spree
  class GalleriesController < Spree::StoreController
    # GET /spree/galleries
    # GET /spree/galleries.json
    def index
      @galleries = Spree::Gallery.order("created_at DESC")

      respond_to do |format|
        format.html # index.html.erb
        format.json { render :json => @spree_galleries }
      end
    end
  end
end