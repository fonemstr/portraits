Deface::Override.new(:virtual_path => %q{spree/checkout/_address},
                     :name => %q{change billing_fieldset_wrapper class},
                     :set_attributes => %q{[data-hook="billing_fieldset_wrapper"]},
                     :attributes => {:class => 'span4'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/checkout/_address},
                     :name => %q{change shipping_fieldset_wrapper class},
                     :set_attributes => %q{[data-hook="shipping_fieldset_wrapper"]},
                     :attributes => {:class => 'span4'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/checkout/_address},
                     :name => %q{change checkout address buttons},
                     :replace => %q{[data-hook="buttons"]},
                     :text => %q{<div class="span8 form-buttons" data-hook="buttons">
  									<%= submit_tag t(:save_and_continue), :class => 'continue btn btn-primary' %>
								 </div>},
                     :disabled => false)