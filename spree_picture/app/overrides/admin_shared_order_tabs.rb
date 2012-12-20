Deface::Override.new(:virtual_path => %q{spree/admin/shared/_order_tabs},
                     :name => %q{add picture to order tabs},
                     :insert_bottom => %q{[data-hook="admin_order_tabs"]},
                     :text => %q{<li<%== 'class="active"' if current == 'Pictures' %>>          
          <%= link_to_with_icon 'icon-picture', "Pictures", admin_order_pictures_url(@order) %>
        </li>},
                     :disabled => false)