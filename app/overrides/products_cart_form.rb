Deface::Override.new(:virtual_path => %q{spree/products/_cart_form},
                     :name => %q{change_add_to_cart_button},
                     :replace => %q{code[erb-loud]:contains('add-to-cart-button')},
                     :text => %q{<%= button_tag :class => 'btn btn-primary btn-large', :id => 'add-to-cart-button', :type => :submit do %>},
                     :disabled => false)