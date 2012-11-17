Spree::LineItem.module_eval do
	has_many :pictures, :as => :viewable, :order => :position, :dependent => :destroy
end