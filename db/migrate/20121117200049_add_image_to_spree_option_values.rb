class AddImageToSpreeOptionValues < ActiveRecord::Migration
  def change
    add_column :spree_option_values, :image, :string
  end
end
