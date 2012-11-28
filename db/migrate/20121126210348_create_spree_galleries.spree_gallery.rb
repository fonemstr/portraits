# This migration comes from spree_gallery (originally 20121126200154)
class CreateSpreeGalleries < ActiveRecord::Migration
  def change
    create_table :spree_galleries do |t|
    	t.string :title
    	t.text :description

      t.timestamps
    end
  end
end
