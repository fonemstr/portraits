Deface::Override.new(:virtual_path => %q{spree/checkout/edit},
                     :name => %q{change checkout title class},
                     :set_attributes => %q{[data-hook="checkout_title"]},
                     :attributes => {:class => 'span2'},
                     :disabled => true)

Deface::Override.new(:virtual_path => %q{spree/checkout/edit},
                     :name => %q{change checkout progress class},
                     :set_attributes => %q{[data-hook="checkout_progress"]},
                     :attributes => {:class => 'span10'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/checkout/edit},
                     :name => %q{change checkout summary box class},
                     :set_attributes => %q{[data-hook="checkout_summary_box"]},
                     :attributes => {:class => 'span3'},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/checkout/edit},
                     :name => %q{add div for checkout title},
                     :surround => %q{[data-hook="checkout_title"]},
                     :text => %q{<div class="span2"><%= render_original %></div>},
                     :disabled => false)

Deface::Override.new(:virtual_path => %q{spree/checkout/edit},
                     :name => %q{change checkout form wrapper erb code},
                     :replace => %q{[data-hook="checkout_form_wrapper"]},
                     :text => %q{<div class="<%= if @order.state != 'confirm' then 'span8' else 'span12' end %>" data-hook="checkout_form_wrapper">
      <%= form_for @order, :url => update_checkout_path(@order.state), :html => {:class => "#{if @order.state == 'address' then 'row' else '' end}", :id => "checkout_form_#{@order.state}" } do |form| %>
        <%= render @order.state, :form => form %>
      <% end %>
    </div> },
                     :disabled => false)