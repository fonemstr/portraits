class CreateSpreeGalleries < ActiveRecord::Migration
  def change
    create_table :spree_galleries do |t|
    	t.string :title
    	t.text :description
      
      t.timestamps
    end
  end
end
