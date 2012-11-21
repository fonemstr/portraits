Deface::Override.new(:virtual_path => %q{spree/shared/_order_details},
                     :name => %q{add table class to order details},
                     :set_attributes => %q{[data-hook="order_details"]},
                     :attributes => {:class => 'table'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/shared/_order_details},
                     :name => %q{remove row style from step data},
                     :remove_from_attributes => %q{div.steps-data},
                     :attributes => {:class => 'row'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/shared/_order_details},
                     :name => %q{remove hr},
                     :remove => %q{hr},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/checkout/_confirm},
                     :name => %q{change checkout order details buttons},
                     :replace => %q{[data-hook="buttons"]},
                     :text => %q{<div class="form-buttons" data-hook="buttons">
  									<%= submit_tag t(:place_order), :class => 'continue btn btn-primary' %>
								 </div>},
                     :disabled => false)