Deface::Override.new(:virtual_path => %q{spree/orders/_line_item},
                     :name => %q{show line item image if available},
                     :replace => %q{[data-hook="cart_item_image"]},
                     :text => %q{<td class="cart-item-image" data-hook="cart_item_image">
                     							<% if line_item.pictures.length == 0 %>                     								
    																<% if variant.images.length == 0 %>
      																<%= link_to small_image(variant.product), variant.product %>
    																<% else %>
      																<%= link_to image_tag(variant.images.first.attachment.url(:small)), variant.product %>
    																<% end %>
    															<% else %>
    																<%= link_to image_tag(line_item.pictures.first.attachment.url(:small)), variant.product %>
    															<% end %>
  																</td>},
                     :disabled => false)

