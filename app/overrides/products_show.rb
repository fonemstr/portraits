Deface::Override.new(:virtual_path => %q{spree/products/show},
                     :name => %q{add_class_products_left_part},
                     :set_attributes => %q{[data-hook="product_left_part"]},
                     :attributes => {:class => 'span6'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/products/show},
                     :name => %q{add_class_to_products_right_part},
                     :set_attributes => %q{[data-hook="product_right_part"]},
                     :attributes => {:class => 'span6'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/products/show},
                     :name => %q{add_class_product_show},
                     :set_attributes => %q{[data-hook="product_show"]},
                     :attributes => {:class => 'row'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/products/show},
                     :name => %q{remove_class_row_from_product_left_part_wrap},
                     :remove_from_attributes => %q{[data-hook="product_left_part_wrap"],[data-hook="product_right_part_wrap"]},
                     :attributes => {:class => 'row'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/products/_cart_form},
                     :name => %q{remove add to cart},
                     :replace => %q{div.add-to-cart},
                     :text => %q{
                            <div class="add-to-cart">
          <% if @product.on_sale? %>      
            <%= number_field_tag (@product.has_variants? ? :quantity : "variants[#{@product.master.id}]"),
              1, :class => 'title', :min => 1, :max => @product.on_hand %>
            <%= button_tag :class => 'large primary', :id => 'add-to-cart-button', :type => :submit do %>
              <%= t(:add_to_cart) %>
            <% end %>
          <% else %>
            <%= content_tag('strong', t(:out_of_stock)) %>
          <% end %>
        </div>
                     },
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/products/_cart_form},
                     :name => %q{add drop downs},
                     :replace => %q{div#product-variants},
                     :text => %q{
                            <div id="product-variants" class="columns five alpha">
        <h6 class="product-section-title"><%= t(:variants) %></h6>
        <%= hidden_field_tag 'product', @product.id %>
        <ul>
        <%  @product.option_types.each do |option_type| %>
            <li>
              <%= option_type.presentation %><br/>
              <%= select_tag "option_types[#{option_type.id}]", options_for_select(instock_option_values(@product, option_type).map{ |c|  [ c.presentation, c.id, {'data-image' => c.image} ] }) %>
            </li>
        <% end %>
      </ul>
      </div>
                     },
                     :disabled => false)