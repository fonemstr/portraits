Deface::Override.new(:virtual_path => %q{spree/orders/edit},
                     :name => %q{change_empty_cart_button},
                     :replace => %q{code[erb-loud]:contains('submit_tag')},
                     :text => %q{<%= submit_tag t(:empty_cart), :class => 'btn btn-info' %>},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/orders/edit},
                     :name => %q{change_continue_shopping_button},
                     :replace => %q{code[erb-loud]:contains('continue_shopping')},
                     :text => %q{<%= link_to t(:continue_shopping), products_path, :class => 'btn btn-info' %>},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/orders/edit},
                     :name => %q{change_update_button},
                     :replace => %q{code[erb-loud]:contains('update-button')},
                     :text => %q{<%= button_tag :class => 'btn btn-primary', :id => 'update-button' do %>},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/orders/edit},
                     :name => %q{change_checkout_button},
                     :replace => %q{code[erb-loud]:contains('checkout-link')},
                     :text => %q{<%= button_tag :class => 'btn btn-primary', :id => 'checkout-link', :name => 'checkout' do %>},
                     :disabled => false)

