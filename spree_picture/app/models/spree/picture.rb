module Spree
	class Picture < Spree::Image

		has_attached_file :attachment,
                      :styles => { :mini => '48x48>', :small => '100x100>', :product => '240x240>', :large => '600x600>' },
                      :default_style => :small,
                      :url => '/spree/pictures/:id/:style/:basename.:extension',
                      :path => ':rails_root/public/spree/pictures/:id/:style/:basename.:extension',
                      :convert_options => { :all => '-strip' }
		
	end
end
