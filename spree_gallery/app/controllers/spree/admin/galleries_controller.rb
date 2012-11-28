module Spree
  module Admin
    class GalleriesController < Spree::Admin::BaseController
      # GET /spree/galleries
      # GET /spree/galleries.json
      def index
        @spree_galleries = Spree::Gallery.all

        respond_to do |format|
          format.html # index.html.erb
          format.json { render :json => @spree_galleries }
        end
      end

      # GET /spree/galleries/1
      # GET /spree/galleries/1.json
      def show
        @spree_gallery = Spree::Gallery.find(params[:id])

        respond_to do |format|
          format.html # show.html.erb
          format.json { render :json => @spree_gallery }
        end
      end

      # GET /spree/galleries/new
      # GET /spree/galleries/new.json
      def new
        @spree_gallery = Spree::Gallery.new
        @spree_gallery.pictures.build

        respond_to do |format|
          format.html # new.html.erb
          format.json { render :json => @spree_gallery }
        end
      end

      # GET /spree/galleries/1/edit
      def edit
        @spree_gallery = Spree::Gallery.find(params[:id])
      end

      # POST /spree/galleries
      # POST /spree/galleries.json
      def create
        @spree_gallery = Spree::Gallery.new(params[:gallery])

        respond_to do |format|
          if @spree_gallery.save
            format.html { redirect_to admin_gallery_path(@spree_gallery), :notice => 'Gallery was successfully created.' }
            format.json { render :json => @spree_gallery, :status => :created, :location => @spree_gallery }
          else
            format.html { render :action => "new" }
            format.json { render :json => @spree_gallery.errors, :status => :unprocessable_entity }
          end
        end
      end

      # PUT /spree/galleries/1
      # PUT /spree/galleries/1.json
      def update
        @spree_gallery = Spree::Gallery.find(params[:id])

        respond_to do |format|
          if @spree_gallery.update_attributes(params[:gallery])
            format.html { redirect_to admin_gallery_path(@spree_gallery), :notice => 'Gallery was successfully updated.' }
            format.json { head :no_content }
          else
            format.html { render :action => "edit" }
            format.json { render :json => @spree_gallery.errors, :status => :unprocessable_entity }
          end
        end
      end

      # DELETE /spree/galleries/1
      # DELETE /spree/galleries/1.json
      def destroy
        @spree_gallery = Spree::Gallery.find(params[:id])
        @spree_gallery.destroy

        respond_to do |format|
          format.html { redirect_to spree_galleries_url }
          format.json { head :no_content }
        end
      end
    end
  end
end
