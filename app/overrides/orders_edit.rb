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
                     :disabled => true)

Deface::Override.new(:virtual_path => %q{spree/orders/edit},
                     :name => %q{change_checkout_button},
                     :replace => %q{code[erb-loud]:contains('checkout-link')},
                     :text => %q{<%= button_tag :class => 'btn btn-primary', :id => 'checkout-link', :name => 'checkout' do %>},
                     :disabled => true)

Deface::Override.new(:virtual_path => %q{spree/orders/edit},
                     :name => %q{replace cart buttons div},
                     :replace => %q{[data-hook='cart_buttons']},
                     :text => %q{<div class="links" data-hook="cart_buttons">
          <%= button_tag :class => 'btn btn-primary', :id => 'update-button' do %>
            <%= t(:update) %>
          <% end %>
          <%= button_tag :class => 'btn btn-primary', :id => 'checkout-link', :name => 'checkout' do %>
            <%= t(:checkout) %>
          <% end %>
        </div>},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/orders/edit},
                     :name => %q{replace subtotal div},
                     :replace => %q{#subtotal},
                     :text => %q{<div id="subtotal" data-hook>
          <h5><%= t(:subtotal) %>: <span class="order-total"><%= @order.display_total %></span></h5>
        </div>},
                     :disabled => false)

