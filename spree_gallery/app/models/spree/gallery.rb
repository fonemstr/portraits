class Spree::Gallery < ActiveRecord::Base
  attr_accessible :title, :description, :pictures_attributes
  has_many :pictures, :as => :viewable, :order => :position, :dependent => :destroy

  accepts_nested_attributes_for :pictures

  scope :recent, order("created_at desc").limit(4)
end
